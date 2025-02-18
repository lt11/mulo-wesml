#!/bin/bash

## header  --------------------------------------------------------------------

### the one that build the ground truth

## settings  ------------------------------------------------------------------

full_dir=$(cd $(dirname "${0}") && pwd)
base_dir=$(dirname "${full_dir}")
pll_runs=24
read -a popu_samp <<< "${1}"

### output folders
out_dir="${base_dir}/var-calls/gt"
if [[ -d "${out_dir}" ]]; then rm -rf "${out_dir}"; fi
mkdir -p "${out_dir}"

### input folders
dir_mtc="${base_dir}/var-calls/anno-snpeff"
dir_unc="${base_dir}/var-calls/anno-snpeff-unc"

### run the caller
seq_dim=$(echo "${#popu_samp[@]}")
pll_check=$((pll_runs + 1))
for (( ind_i=0; ind_i<seq_dim; ind_i++ )); do
  ### parallel samples
  ((cnt_p++))
  if (( cnt_p % pll_check == 0 )); then
    wait -n
    cnt_p=$(( pll_check - 1 ))
  fi

  (
  ### sample output folder
  samp_out_dir="${out_dir}/${popu_samp[ind_i]}"
  if [[ -d "${samp_out_dir}" ]]; then rm -rf "${samp_out_dir}"; fi
  mkdir -p "${samp_out_dir}"
  
  ### find the matched file
  vcf_mtc=$(find "${dir_mtc}" \
  -name "${popu_samp[ind_i]}-vs-*-dbs.vcf.gz")
  ctrl_samp=$(basename "${vcf_mtc}" | cut -d "-" -f 3)
  bcftools view -c 1 -s "^${ctrl_samp}" \
  -O z -o "${out_dir}/${popu_samp[ind_i]}-temp1.vcf.gz" "${vcf_mtc}"
  tabix -f -p vcf "${out_dir}/${popu_samp[ind_i]}-temp1.vcf.gz"
  
  ### find the unmatched file
  vcf_unc=$(find "${dir_unc}" \
  -name "${popu_samp[ind_i]}-isec-flt-srt-anno-dbs.vcf.gz")
  
  ### variant subtraction (vcf_unc - vcf_mtc):
  ### keeps the variants in vcf_unc which are not present in vcf_mtc
  bcftools isec -O z -C -p "${samp_out_dir}" \
  "${vcf_unc}" "${out_dir}/${popu_samp[ind_i]}-temp1.vcf.gz" "${vcf_mtc}"
  bgzip "${samp_out_dir}/0000.vcf"
  tabix -f -p vcf "${samp_out_dir}/0000.vcf.gz"
  
  ### concatenate
  bcftools concat -a "${samp_out_dir}/0000.vcf.gz" \
  "${out_dir}/${popu_samp[ind_i]}-temp1.vcf.gz" \
  -o "${out_dir}/${popu_samp[ind_i]}-unsorted.vcf.gz" -O z

  ### sort
  bcftools sort "${out_dir}/${popu_samp[ind_i]}-unsorted.vcf.gz" \
  -O z -o "${out_dir}/${popu_samp[ind_i]}.vcf.gz"
  tabix -f -p vcf "${out_dir}/${popu_samp[ind_i]}.vcf.gz"
  
  ### clean
  rm -rf "${out_dir}/${popu_samp[ind_i]}-unsorted.vcf.gz" \
  "${out_dir}/${popu_samp[ind_i]}-temp1.vcf.gz" \
  "${out_dir}/${popu_samp[ind_i]}-temp1.vcf.gz.tbi" \
  "${samp_out_dir}"
  ) &
done
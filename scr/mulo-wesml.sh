#!/bin/bash

## header ---------------------------------------------------------------------

### this script is the mulo-wesml runner

## user's settings ------------------------------------------------------------

ref_name="grch38-p14"
### samples: SRR4289724 is the control of both SRR4289725 and SRR4289726

### run 7
ctrl_samp="0db0f83abf9e4b6897d7ec2c3f174156 \
5be806c85c37485f9164c26a647754f4 \
5cff717ec68442eba812f1471a7e42d1 \
91e3cd45c23041d6ad899832229abd44 \
93f0abdc4bcd4c1dbf805bb9de3c1487 \
b9c564b103cf47d196d3bc2482fbe2aa \
e27ee2ca503249dba18f36fff83c98c3 \
8aee029e9da14714933a7613313dd998 \
54eb48888dc841799a6b8ee660542e63 \
edc42619b9ec4296bf85d451b796ede5 \
02addf8a91084a60bba3c45d654a30f7 \
f7f29a52441446059fabe4df5f4d2a08 \
8c896e3f272c4fc2a849a808ce632816 \
52be3b015e09499ea64b9aac0f725ccf \
60e4591c6ce74a658355653f5c41cd2e \
fb2cda884b454173834049f54a899bc7 \
6022470945d64a6f8b999ad6515e80fa \
0de1bd8587e341899c82206b20e4428f \
0206ce3d4c484f588eeb07a34adc9fcd \
a82d9e523c424897b2e552af338c2196 \
5cf958bacb054141881a1eee49992c64 \
57898bbffde24dc49b2ba9f8cd402cb0 \
46c1de6f6f824f55a69016f6bfc380fb \
5d8879d4295c4a2aa3fbd402e2f1f8f5 \
4c5eb4d13046469199dedd448adc1dfc"
popu_samp="7fe74157d2824d3c9a014a894e8a0564 \
1432caf63ad94f0e9269ca42d04f5f18 \
8e119357c81b4d46816a28e51377424f \
fe7cd95d937f458f9c64f1649c4c1b15 \
f21176a937ea4522a159cdbf61cbc542 \
be9a86721d1b419ca234f7ace1feaa95 \
fed3a75937094109a8603f493cd89e8e \
418a3dec96ff4719becbe1a8260cce2f \
f1d80d536703442aa78a02b7e1400102 \
a88ba1a45f1a4d81a17bce66fb86bc72 \
612fd9569a4142019d746ab50f6ae987 \
2e822a8e36da45bfa4fa71a85e615a97 \
1edc3d711ce54cdea9f008f16518308b \
ad8e6eade4f64813932bcf0b390b331a \
2b142863b9634cc98f8fc72503c93390 \
fe66f11ae03d49c5befedb74ef55ce61 \
9225f366b08b4c43a09fa16b3bcfb5aa \
57cf584c8c9542ec9cb0707228b70010 \
885f9df7fc2743c29acc833c410b2db1 \
951799e612f04cf68732f2e044db7210 \
27b354749b834e6ab205e60c23424dde \
70157018a3c54ef89314f8715a3438a4 \
7d3ebc1fd16f43baad9466d0a9a0604b \
5fea9ebc8c1b4078af8779c7f5b5470b \
c9214f8b66844e29812c2a44963e8914"
# ### run 8
# ctrl_samp="740f8d1735634a138089509a5989c33d \
# 4b352295bcb7457a80a06369bb7f8ff9 \
# 74292da72a53455d8d33438db411fa67 \
# ca4aefda8e9e416d8d0ad0be49d62753 \
# 7e108f9d561249bb987236decdc172a3 \
# 01aea99de3314b02a0cde9df66a08d9c \
# 87130101046f4b719ed979b2d8556e64 \
# 247b733948fe485b82661e8488d1527d \
# fe078b430f764648ac30af1599fd3421 \
# e400b9af13744f6db82eae17e336c9f2 \
# 938c2f935c8a41fbb2c43c501b059576 \
# 360144da2c0b4e1881b55dde9d7a3682 \
# b8689030bf4c4d70a563b974838c6bd1 \
# 5c237a4036974c3099ae9288b4f7a239 \
# 60db65dec75e4f86a87be6ffef420753 \
# c956aebac031410c84afaf79863b044d \
# 91726c6ba3b74cbc9e8f990a0824147e \
# ad47df84271c47828b59c04994915ea0 \
# 4380ca332c754d97911238a626c1cc6d \
# fd2074ee309f48f9a12292a5bb8ee1f2 \
# 984543c00d4b4b68997ea8e3a755414d \
# 85197715a7754ffa838c9b9935b3c78e \
# f5a0150c19b843ad8e1a7c2608c388ae \
# 8d3a637ef6284eb8b11c8fe0153cb671 \
# 9ba38ffb4d0d46f6ac568eeb499610cc \
# f2a1d5e2fc0c42f5afeda1eee7dc16d5 \
# e0ac1cfdec6d44cd80cc41c1eca3ccdd \
# 619f4da784f44a67be9512b6d477e8a4 \
# 20e316a4d1e444d2881c527e600203f0 \
# c84c2300f61a4475800d75efe77a7716 \
# e2d1b893e42a4cc3b9da0242acbe6a7d \
# e9cd02ad20b64c4da7b890748837c861 \
# 37e8f183f2f54d03b5b56b2ca3c2c15f \
# 843162db7cdc45dbb873ff066eb78fcf \
# 6155131341c74703897a8f1e2ecc2ece \
# e6c5bfd190e7422faf4d98bc4f8081c5 \
# 222b074d6fc94d9c927580a034151bb9 \
# cb71a53796eb4030a894466d30d1ad1e \
# 37d394c4922a421ab4e4ad469035cd1c \
# ca8e5a2b459e46c99818cc8a71465b1f \
# 631737bdc06e451898e67366fba9d86e \
# a06945b0df2d496c8f035909dce4cd11 \
# 5dc1e20fdbf64c1d84610f3283d391f1 \
# 93bbc78dd7924bfea8b1d7db55452cd9 \
# 1462a1c2cd3a41008c5132737edef5bc \
# 4c7c837df3b74250a9289bd403835a12 \
# 3ec745dfb7854be88b3e035051fa453b \
# 1ac6a7bfbebb489da0030bbea034c49d \
# f211fd01314143e2aa4888345b08a70f \
# 131597cbc564420da0d0e00f23c2c413 \
# af9543e2d1154681890fdd23298bcf39 \
# b06230e4bd39423188ea7a962b017e55 \
# 9586a2c8334642e0b2d90faee7ad0c8e \
# 50ae5b6d16f7459e890ca4ea42c8c454"
# popu_samp="53c2e1595774499fb0d1e04fa3faf5c3 \
# 4dd4035ac80041b085c902531d2910ed \
# d530c696235d4a41944de7f7ae21aa17 \
# c0845927fc9a41b29431619952878e18 \
# 713d72abd9604312a16163a6a511373c \
# 3fdb46984a384a81a403d1ce5568c225 \
# 9c364f7e5b9044ef9f80250e428989ef \
# ec114413a9504e74abc898857af8b9ad \
# ec0a719b3c3a47979ec590d3474da727 \
# b9ec516bfce64383974808b48a37185b \
# 9c27adf9c0144362a0e3974f9522a393 \
# dc220a9d1f164fe38196d837a909f038 \
# f061abfa455443289e8fb84dd2aa4b45 \
# 3486c689d7ae4ce88df5ac8271b4661d \
# b0ce56d28e2b42b4ac59d37ba5a7a2c3 \
# 5c636c2df42643a9984db4455e4388e5 \
# e11fa84cc4e941bc8b4648be0444880a \
# e2e84cc12944489ebe1b0018a4e723e4 \
# a5056023b9354a18821b2ff8562b2c2a \
# 2d834605102b4b3aa2fab26525c77acf \
# ab3b50c503354685acc2eeadbf2a9c1b \
# 43a5a5ca7185436186b682b9d99f036c \
# 2342c577a2e84239ba8ebbf1c62e7741 \
# 44286013ae97489086d31163285ac0cd \
# 30a18e06a21942fb934d05dab59924d2 \
# d11ba541725c4e0885728e4115f562f5 \
# 977a1314f9644427b0dac6d01a0fde7c \
# 6b99fefbdd564ec2840dd91cf4cd9857 \
# 43b8f335bb3245de985a85508048b237 \
# a314ee0c694b4ac8b572ff1fbbda4765 \
# 6a744bf750134590b3b25403f67091c3 \
# c11f13a303af45729211f733f8a33636 \
# 436121d4a80d42818e9d9decd193c2db \
# a678cc4990094027826fe17f4533538d \
# 056acb55f3ba4ce097353cfe6516df55 \
# 5627536bf7a540f8a93d3f63a8fafa2a \
# e5e420376ca2404fb8b879fd4bc39504 \
# f0744cbfb45342e89353d3ebedf3d4d1 \
# ddb5491e828e404abba64f3b447869ff \
# 42a4a60c257e4bf6a9ba6f162dbca94a \
# 12e0a3a23cf742c1aa18c55552c92afe \
# 7a81ef65c22f4e65a342fac599655cf3 \
# f0071f61627a425a9d674dc185757d90 \
# 767a9ae02aa4467bb9c3fb3bf701b642 \
# 26a478a432dd4516a8ee238726eecce1 \
# 6add6f64d9944d478cf8ff73ea2340b7 \
# 16a12f4da5744d18951599ae107106d5 \
# b295ebc0e46a4b8bb9e81a70cdbf7cee \
# a3e426c7beaf40c688a0092582340145 \
# d0ab1ba1678142a0a5a6ede93ef9ff55 \
# 23f0e89f779f48fbb5c939cf1ac20b6d \
# 0a075a7a0f5648edb556154f06e57062 \
# 9c45d7096fdf420ebc045ad037ed9d59 \
# 6a074fd834244909bd452ecf48301240"
# ### run 9
# ctrl_samp="85153653fa5d43dabcee6c3ae8ffc931 \
# a51562e936eb47f8a6965da1c3ff49f3 \
# 0dd4d2e1db9044408a60fd7071ea5d16 \
# 92612e6bb2d141bea6a426d73360406b \
# 9887727ce6d8441592b3f694a21eacc5 \
# 7453f1689b584675be27789fd67654a6 \
# 558ebd94a7344314b9e9e8bd85991546 \
# f02718deeecc453699dcc4c41f8e6cdb \
# be0c1219e1774895882f607261fe4741 \
# fb53f86c60774496a22235622ccdedf8 \
# aa77f083a26648509782bf32c8230dff \
# c7a887b2e8ce487e813bfb9f1fe36362 \
# 39c49034aae8427082ec34005a04b4c2 \
# daea6ceb2591422cb7299c1bc568786c \
# f7e6028e6fd843b1b881d923a937ed6c \
# e153477bf9d343e69dfc40f1fd9f42ab \
# 865f246b0e3f46b781126c1475198b42 \
# 536a796851fb4f27afc55710b7922bea \
# 9a183c98af4847659c9352a87e62955f \
# d42e8bccafc84482aae094de92c6d54d \
# f13026135b3d4f3cb1d4117355484e8e \
# d8bfaabec026426baa9feb512ec18101 \
# 3b0b9f9ea1ff41639b322adf228ff889 \
# d547aaeb1a584242961d4a91aaa04acd"
# popu_samp="9f0b16d5394749d387cf86a67627ad66 \
# 313b4f4a92fb4bed9f25b53fff274061 \
# 34c8982a540444deac4c3055da585c02 \
# bb4767d946394023bbfc88a5cdefd136 \
# bfa7177f6d7e4f20b9c300eab658e818 \
# c0c3b0ea66dd4bd48ff4c0a27aaa0767 \
# 1940622798024b5a90d120b8c475ad53 \
# f2a76a1f296b4431abba8c4850f6bd9a \
# aa3a523c50f14aafae8a23867be79a25 \
# 6f00fcf3f10e4c22b4ead9cc765d2647 \
# a3b78fb8584647d88cc8af07207fe597 \
# 9c7ea2ee4472490099f3e17f3f7876d5 \
# 6d52d758db1049698965252e18c4422a \
# 1ada4b3855e44e5ab58ed442058bfd92 \
# c2f0820be38e48cea676f2cf70c06101 \
# 03e36fad0e6d4a8ca0047e47a9b4e4bc \
# 3db3b7b1da1d4b9ca92ac60fecf4328c \
# 11822391a72344518df43cd94460f359 \
# 9fb63209f7f145db94e3f57f4e510a4f \
# 55fb5533c4fb48688763265bb849e87e \
# 26985e4efded436da91c2bec1320d1de \
# 3ed785cf5f7c4376a036e828130d4ef3 \
# 35a27ae22fe9419ab79d6ca55608ff30 \
# 6b40e5ed60a444678ec46dc7848ba027"
# ### run 10
# ctrl_samp="16b73e40db9046bcaf1d867bc80eac4f \
# a8b9ad2d5f8e40cf945af2942dec462e \
# abde7a376ac347eb9a0fac0c58863cd0 \
# 879272a68692432cbd1133837418b992 \
# b767cac2d8a64c158a0ab5e724f4473a \
# 689256a39a314c2e85fc608e752bdf22 \
# 09cec28edf364ac289baf20227180e29 \
# 1d792ec7f6a3495ca0f4bdee33a04acf \
# daa86bb519534e919402351bfbbd5ad1 \
# fa4731464d2f4575929f30db5dcc6a6d \
# 727bd1ad1d7f45699ed0f0d1d355c7ef \
# 9e44fe6ec1e84df5a62df59e6113a60d \
# 13686f331c774020b2e44df6a1e79b49 \
# b3a79e2e7b7542fba9e593e4ac5a90e2 \
# 960576ee873540e59e0ead6ca526d94e \
# e592ed1e4fa3459e825601b5e2dc09ce \
# 6c06b9ec6df240299b30c38448f9637f \
# 16d8b5bea00c43cf8121f0c8b5dcc5c2 \
# 089c6a18596341a282245793318db837 \
# 433ab22f7d7f4e8686f30ab50681046c \
# d3ef878062a64dbbab8f3e7122632efc \
# 5d6e6d97dba34087ba363840e5b33520"
# popu_samp="ce82e541bd9b48b3aa738aea89cc8380 \
# f69a55ff6c6e48b389ffe9fb752b48c4 \
# 6dd974cf0c9d4a4cb97d581419e6e520 \
# 5d34e7a288bb4211a3cdfb77208a6605 \
# 9a12bec0d01c4e95a9f8ff6b96292692 \
# ebe4fd9e75fb4950bc9b5920f3ec1e04 \
# a2224a2a49c64cc9a55a6097a28b8898 \
# 04dc7ecee9534f0c841f1ba1a1d17bef \
# cd7d0c1424694303b0447050b90d407e \
# 7dfdbede16774327a70b7b57f3308f8d \
# 1e4946ced743487ba3762928163571e6 \
# 73b75d9d568045b5823603d3ae153c29 \
# 6edea97faf8d4505bc5ed70a53ba334b \
# d1b4683890054027abe19300bc489c54 \
# 66e07576acd94a7384215e5999284177 \
# 0c78bd1af7eb44568210f115aa079df5 \
# 0121784897f3499589c83b0cf9527c40 \
# 4663fa5a53e740bea6626aaa4e456475 \
# 5ebd77cff8b741649d3cdac8c78331ef \
# 90533f5d07614b4aa1ee91e10e9ba2c4 \
# fa676301902f473f83135bff34ae549a \
# c4c499f391c4400e9d4c34cc4ba25efd"
# ### run 11
# ctrl_samp="SRR3083867 \
# SRR3083883 \
# SRR3083856 \
# SRR3083869 \
# SRR3083846 \
# SRR3083860 \
# SRR3083848 \
# SRR3083840 \
# SRR3083873 \
# SRR3083862 \
# SRR3083879 \
# SRR3083875 \
# SRR3083854 \
# SRR3083881 \
# SRR3083844 \
# SRR3083852 \
# SRR3083877 \
# SRR3083842 \
# SRR3083838 \
# SRR3083858 \
# SRR3083864 \
# SRR3083871 \
# SRR3083850"
# popu_samp="SRR3083866 \
# SRR3083882 \
# SRR3083855 \
# SRR3083868 \
# SRR3083845 \
# SRR3083859 \
# SRR3083847 \
# SRR3083839 \
# SRR3083872 \
# SRR3083861 \
# SRR3083878 \
# SRR3083874 \
# SRR3083853 \
# SRR3083880 \
# SRR3083843 \
# SRR3083851 \
# SRR3083876 \
# SRR3083841 \
# SRR3083837 \
# SRR3083857 \
# SRR3083863 \
# SRR3083870 \
# SRR3083849"
# ### run 12
# ctrl_samp="a592e794fb424d1695b3c2059390b14c \
# 8e1103308f354680b920cca0e6156105 \
# 3a9f03ca861847eb80a8120d835ab714 \
# 2bbed379b7b84107afe0bfd42b041bb3 \
# 9dba8651a3744e47862ff91f46c7bd4d \
# 5f7ab27c4bb5430ca173433d42f767d5 \
# 758b85545e4a469e92ddc459fbcd4e0e \
# 5efebdb0cfc142aebe1de124289877a5 \
# 29ee93c76fcd4a76bc26beaa899b9be9 \
# 74fe1db19f3c4457804a9432ce8156f5 \
# 718ac0d3ae754ec9b69b8cda5e3d2cad \
# 6ef662e131f746369d21a5409c9d46b3 \
# b5dc854d44a14ef287fec65fc39f7d2e \
# 8cf937d888aa4896adb5fd5479580dc3 \
# ce86540c848846d39a6f591f2f3b5be7 \
# d558f5836c204f1da431dda54d4d3f05 \
# e1afb0d5ca804fdb86c827443f74b3a6 \
# 5bc449b5fc2249d09145887f4c16e2ea \
# 5cf5995d4ad74c93858b1e46e9cb6bfb \
# 0ff8a73ff639479882f0852d9c183b9d \
# 5f232b7352814be096790920bcb4dd29 \
# 89d0a1e31b77413faa1ff31cc665e959"
# popu_samp="856d70685d314bc0b50ce02ed89ced3f \
# d742814cf5f34231a2e06014e315d672 \
# 4d394512e495472b89e0bb402f714949 \
# f8b1d5eea86d450596f83e8b0c050946 \
# efd48c0260c44db19c408ffcac8b4991 \
# 2e4fe50f0ee646c297952e2c1c8a86bf \
# a588279bb306445f958461586da9887f \
# 5a58bec067a8452980d81042dfd8164a \
# 8a8a23d5716d4e90ab83cfa3c3eccdad \
# 308bc9ed2d0748058c9b721b6dac164d \
# fb62bace995f4da18ebbad5c18455253 \
# 59db811a0bfd4074a5a3e9f33402c6cd \
# d27a570c2115488599394aa5955bf4cd \
# fc8f661f51cf492daebfc9ea75151dae \
# 955795135f164bdcbf4c4d4d76a3d069 \
# a14779a47bb54393bf692fb981af9662 \
# a9558e639b5c4cd295a33a803277359f \
# c7ec7db52a0a4300aedcf26b90255648 \
# 59db8d853daa42af864941c53d90e9ce \
# 665a50ed6767411ab99d7e994cbe5e17 \
# cef644600ab548679675da4a7d84310e \
# 171689da01a440f081f12e31c2e22def"
# ### run 13
# ctrl_samp="1928b73f40804d99980f7b7cd456a955 \
# 7888d0dc9a75417a8dd63897de85f24b \
# cb4063afe2a44933b72cc70cec0a908f \
# 548fcaa0101b4c84b65e1bec3a6a4354 \
# 420eb8bafc414bf8a90b89e8ef537faf \
# d4ab22819ee945c99e97686602678727 \
# 5ac3168963f449e48a06a822d0ff828a \
# 213426e8ddbf4920813e74f7f68823fe \
# 180b06bb30e0432ab82406e45b102438 \
# 2edb9fb8741547baa52b95925bfa3677 \
# 183446dc6ca84d0dad3873b34d833ba4 \
# 1f1936a12c704dd9845c44d8262ac43d \
# cfa4574dc00240e3a7b5f57a056ca98b \
# 8182aa5086df427ca9e9c1119ef5ae26 \
# dd45289a3543448aad91b35d282448f5 \
# f5ab5ae449e54a0191126aa58c023e0e \
# c2643ccc164243f0932f2ec47a0d943b \
# f1797d64b9fe40abbd49793905d5c8d8 \
# e7741100a22b43899dcc838eeff5765e \
# 90a5a126a23040d4977cbbcfb4e5e3bc \
# 11c93f9598634cb0a348f35a54b2071a \
# c3be8a1be6754781b9082ca544764caa"
# popu_samp="eec1b52bf28047318860a57a790cdaac \
# 6ec022e6a735448d86b42854b80669f6 \
# b40239c3590046bb95e13f395f972166 \
# c40d9be5f0174344b3da05330706ccfb \
# 71905645b9cb48caaaec97972a04ed1a \
# 48173064ea1c4cf289a3f08baae2ea05 \
# cbed906d982b404088507d7bacf798b7 \
# b22735187fe04c1e85f65c5ef7bbdcab \
# 6c3b8e04658242e9b3cf9220b8c1f136 \
# 02b5a2c4832d4c8bb4f2be0566eb6677 \
# 2afa9f1ee15541ea9284baca6943f237 \
# 0212e1a1d8484b059a512dbe17cdd8b8 \
# 1d98bbae0506442899b1c17109be2443 \
# 4ae6b38ae8784f84af0fab3f5bc3a903 \
# fafdb0f087934fa5aad97edb0fe378a3 \
# 350f490c6cb942f6a54e4707072be422 \
# 9e7a22ef871840eba31051aa9a7cac0f \
# d0652dcac89d47f8a18f551c96c2c9ba \
# 43fdb1549d2c4534bd957d1a697adaca \
# 08b5286fa6214afb98f2e435c5a0a629 \
# aacfaf58eb86443aa1d054c121ca3733 \
# f4dc9363c6af426299fdad58bf716936"
# ### run 15
# ctrl_samp="bf6cba4af118406fa1674d41b9cf209a \
# bbc63b410a7148869194ffdeae6bb13f \
# e882eeb1035e495cb29b5fcef3b36cfc \
# 71896be3fce74266b6d83e20e38337fd \
# 2a138f1b62e642c6b1a6527769613304 \
# ef7ae782355b4982871382dfdb7e1fab \
# dd637e7a28924bd4b8adef88f676791d \
# ac335645b8ee475a89ff8354231cc35c \
# dd0b41b687854558b01f654a4ef347be \
# 641cb40d7358429cbd1352a6e47352ee \
# 7831d6ce6bf74006a7e640725009c99d \
# b9ce1c12dcd64b2fa204074e88b36d2d \
# d1ff3e962398484084a5d347f32ac5d8 \
# f54e274db9794d0ab8beab1ae91a3650 \
# 0c10cd0be901403da71cbb7e4b83a338 \
# de2b06319c544bbfb70efa9fc81519fd \
# 77a1c59785994fad8bebdf80ee080e76 \
# f7e4468b34704f52a0c43bb492180907 \
# 5d2e0197c41947b7b1fdd3b14de673ce \
# e073543456824a008f235dd9135565e4 \
# a8ad03e3eb924d41be5c03fb4df92113 \
# 010c14051b8e4f619e8abe7dde9b9114 \
# 713c99ba29584ae7a64e2428e4d7b833"
# popu_samp="cb5e1546cda64991911cf3dd9f1a475a \
# 289dd857930142148ae53ae1f84be485 \
# fecf5edc7a044f9da47820c262780124 \
# afee5b103dff4e509575bc9fe20c5dea \
# cbfa911645c9422ca9764f0e021ec344 \
# 693ee45f0cc945e18b05bfb08253990a \
# 18382739a33f49e6856ffcf720c49363 \
# 947be4505acc451ca1d894c90b6f05ac \
# dc08ede2aaf343e8810d3f952ebb7320 \
# f62f48f5057444a18b27e28c58fd64dc \
# 386a331f22744b4884a4c96457967205 \
# 5d26cba103ab44b0b4b146a332ebb066 \
# 99f6735859cc43b3950abeafd9a340c7 \
# 29d3ba7153754b41ac2d65e554a8f231 \
# 2d7693e02fe04adb94b74c9f93c7b1b1 \
# 65d44a45df9b421fa16b4e3ad3d337df \
# 2f85b9ca9d2b43af8a4f422f42eb7ed7 \
# 67a2d497587f40f3affd2b3968282e03 \
# eea2ca3112be4db48a800c99986609f3 \
# 0968d79a7013458c9a16e99f20f7ed8e \
# cf1d06390b12422e90ac6c7ebfa911f5 \
# ee94304f9c704781bef3b889e716428d \
# d019903937754727bf3b90e096c1f32b"

## system's settings ----------------------------------------------------------

### check logs folder 
if [[ ! -d "logs" ]]; then mkdir "logs"; fi

### set path to snpeff.jar
snpeff_path="/home/tools/lib/snpeff/snpeff-5.2.0/snpEff.jar"
snpsift_path="/home/tools/lib/snpeff/snpeff-5.2.0/SnpSift.jar"

### path to gatk panel of normal samples
pon_path="/home/shared/dbs/grch38/gatk-pon/1000g-pon-hg38.vcf.gz"

## clmnt ----------------------------------------------------------------------

### quality check
/usr/bin/time -v bash fq-check.sh \
> "logs/fq-check.out" 2> "logs/fq-check.err" &

### reference indexing
/usr/bin/time -v bash index-ref.sh "${ref_name}" \
> "logs/index-ref.out" 2> "logs/index-ref.err"

### mapping
/usr/bin/time -v bash map-sr.sh "${ref_name}" "${ctrl_samp}" "${popu_samp}" \
> "logs/map-sr.out" 2> "logs/map-sr.err"

### coverage statistics
/usr/bin/time -v bash depth-stats.sh \
> "logs/depth-stats.out" 2> "logs/depth-stats.err" &

## matched data ---------------------------------------------------------------

### vardict sets the filters and makes the bed file with padding
/usr/bin/time -v bash call-vardict.sh "${ref_name}" \
"${popu_samp}" "${ctrl_samp}" \
> "logs/call-vardict.out" 2> "logs/call-vardict.err"

### calling with gatk
/usr/bin/time -v bash call-gatk.sh "${ref_name}" \
"${popu_samp}" "${ctrl_samp}" \
> "logs/call-gatk.out" 2> "logs/call-gatk.err"

### normalise and de-duplicate the variants
/usr/bin/time -v bash norm-var.sh \
> "logs/norm-var.out" 2> "logs/norm-var.err"

### hard filter gatk, intersect, and filter vardict
/usr/bin/time -v bash fint-var.sh \
> "logs/fint-var.out" 2> "logs/fint-var.err"

### annotation with snpeff
/usr/bin/time -v bash anno-snpeff.sh "${snpeff_path}" "${snpsift_path}" \
> "logs/anno-snpeff.out" 2> "logs/anno-snpeff.err"

## unmatched data -------------------------------------------------------------

### vardict sets the filters and reads the padded bed done before
/usr/bin/time -v bash call-vardict-unc.sh "${ref_name}" "${popu_samp}" \
> "logs/call-vardict-unc.out" 2> "logs/call-vardict-unc.err"

### calling with gatk
/usr/bin/time -v bash call-gatk-unc.sh "${ref_name}" \
"${popu_samp}" "${pon_path}" \
> "logs/call-gatk-unc.out" 2> "logs/call-gatk-unc.err"

### normalise and de-duplicate the variants
/usr/bin/time -v bash norm-var-unc.sh \
> "logs/norm-var-unc.out" 2> "logs/norm-var-unc.err"

### hard filter gatk, intersect, and filter vardict
/usr/bin/time -v bash fint-var-unc.sh \
> "logs/fint-var-unc.out" 2> "logs/fint-var-unc.err"

### annotation with snpeff
/usr/bin/time -v bash anno-snpeff-unc.sh "${snpeff_path}" "${snpsift_path}" \
> "logs/anno-snpeff-unc.out" 2> "logs/anno-snpeff-unc.err"

## combined data -------------------------------------------------------------

### build the ground truth
/usr/bin/time -v bash build-gt.sh "${popu_samp}" \
> "logs/build-gt.out" 2> "logs/build-gt.err"

### cleaning reference copy and indexes, and mappings
# rm -rf "../ref"
# rm -rf "../map-sr"

echo "Prematura la supercazola o scherziamo?"
echo "[Conte Lello Mascetti]"

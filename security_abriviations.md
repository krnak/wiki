## Goal

IND - indistinguishibility - to distinguish ciphertexts of two messages  
OWF - onewaysness - to decrypt a message  

EUF - (weak) existencial unforgeability - to find a new valid pair `(m,s)` s.t. `m` was not send to sign oracle
SUF - strong existential unforgeability - to find a new valid pair `(m,s)` s.t. `(m,s)` was not output by sign oracle

## Oraculum

PASS - nothing  
CPA - encryption  
CCA - decryption except a target message  

CMA - chosen message attack - gives a signatre of a message  

## Block Cipher Modes

EBC - electronic codebook
CBC - ciphertext chaining - natural option
CTR - counter mode
GCM - galois counter mode
OFB - output feedback - stream cipher
XEX,XTS - drives
OCB - offset codebook mode - input & output masks, one-round AEAD
CFB - cipher feedback - =OFB but xoring plaintext additionally

## Hard problems

DDH - distinguishing Diffie-Helman
CDH - computational Diffie-Helman
DL - discrete logarithm
RSA


## Schemes

MPC - multiparty computation
FE - functional encryption
FHE - fully homomorphic encryption
SFHE - somewhat homomorphic encryption
KEM - key encaptulation mechanism
DEM - data encaptulation mechanism

## Others
OAEP - E(m) = f_{pk}({m|0^t⊕G(R)}||{R⊕H(m|0^t⊕G(R) )})






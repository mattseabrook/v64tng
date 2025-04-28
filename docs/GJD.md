**The 7th Guest GJD**

From XentaxWiki

Jump
to: [<u>navigation</u>](https://web.archive.org/web/20230518100359/https:/wiki.xentax.com/index.php/The_7th_Guest_GJD#mw-head), [<u>search</u>](https://web.archive.org/web/20230518100359/https:/wiki.xentax.com/index.php/The_7th_Guest_GJD#p-search)

**Contents**

- [<u>1 GJD +
  RL</u>](https://web.archive.org/web/20230518100359/https:/wiki.xentax.com/index.php/The_7th_Guest_GJD#GJD_.2B_RL)

  - [<u>1.1 Format
    Specifications</u>](https://web.archive.org/web/20230518100359/https:/wiki.xentax.com/index.php/The_7th_Guest_GJD#Format_Specifications)

  - [<u>1.2 MultiEx BMS
    Script</u>](https://web.archive.org/web/20230518100359/https:/wiki.xentax.com/index.php/The_7th_Guest_GJD#MultiEx_BMS_Script)

  - [<u>1.3 Notes and
    Comments</u>](https://web.archive.org/web/20230518100359/https:/wiki.xentax.com/index.php/The_7th_Guest_GJD#Notes_and_Comments)

  - [<u>1.4 Compatible
    Programs</u>](https://web.archive.org/web/20230518100359/https:/wiki.xentax.com/index.php/The_7th_Guest_GJD#Compatible_Programs)

**GJD + RL**

- **Format Type **: Archive

- **[<u>Endian
  Order</u>](https://web.archive.org/web/20230518100359/http:/en.wikipedia.org/wiki/Endianness) **:
  Little Endian

**Format Specifications**

**// \*.rl File**

> **// for each file**
>
> **char {12}    - Filename (null)**
>
> **uint32 {4}   - File Offset**
>
> **uint32 {4}   - File Size**

**  
// \*.gjd File**

> **// for each file**
>
> **byte {X}     - File Data**
>
> **byte {1}     - null Padding between files**

**MultiEx BMS Script**

Just a simple RIFF wave file search:

Get S ASize 0 ;

For T = 1 To S ;

FindLoc B String RIFF 0 ;

GoTo B 0 ;

Get D Long 0 ;

Get FSI Long 0 ;

Math FSI += 8 ;

Set T Long B ;

Math T += FSI ;

Log "" B FSI 0 0 ;

Next T ;

**Notes and Comments**

- The \*.rl file has the directory, the \*.gjd file has the file data

- Trivia note on Trilobyte file extension naming:  
  'rl' = Rob Landeros  
  'gjd' = Graeme J. Devine  
  'roq' = Roque Devine (Graeme's daughter, born during 11H production)  
  'rol' (unknown)  
  'rnr' = 'Roque 'n' Roll' (roq (video) file and rol (audio) file
  interleaved)

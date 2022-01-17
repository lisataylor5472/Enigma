# ENIGMA

Welcome to my Enigma Machine!
Is uses a command line interface to run an encryption and decryption tool.


## HOW TO ‍USE

Use the two runner files, `encrypt.rb` and `decrypt.rb` to execute
encryption and decryption of a message contained in `message.txt`.

- Enter your command line interface (CLI)
- Ensure you have ruby installed - [ruby-install guide](https://www.ruby-lang.org/en/documentation/installation/)
  - This repo was created using Ruby 2.7.2
- Clone this repo - navigate to the enigma directory
- Add a message within the `message.txt` file - it can be encased in `""` or not.
#### To Encrypt
- Enter the following into your CLI  <br>
`$ ruby ./lib/encrypt.rb message.txt encrypted.txt`
- It should return <br>
`=> Created 'encrypted.txt' with the key <5 digit key> and date <DDMMYY>`
- View the newly generated encrypted.txt file for the encrypted message.
#### To Decrypt
- Enter the following into your CLI  <br>
- `$ ruby ./lib/decrypt.rb encrypted.txt decrypted.txt <5 digit key> <DDMMYY>`
- It should return <br>
`=> Created 'decrypted.txt' with the key <5 digit key> and date <DDMMYY>`
- View the newly generated decrypted.txt file for the deciphered message.



## SELF-ASSESSMENT ✔️


  ### Functionality
  - [x] Enigma Class with `encrypt` and `decrypt` methods successfully implemented
  - [x] `encrypt` and `decrypt` CLI successfully implemented

  #### Notes:

  ### Object Oriented Programming
  - [x] Project is broken into logical components - appropriately encapsulated
  - [x] No classes are unreasonably small or large,
  - [x] Classes do not contain knowledge/info/behavior that they shouldn't know about.
  - [x] Single responsibilities can be articulated
      - Enigma Class - initiates the encrypt and decrypt methods / mechanisms
      - Cipher Class - houses cipher translation info as attributes - puts them into action in cipher and decipher methods.
      - Keyable Module - generates keys as needed within the machine - applies to Enigma and Cipher Classes
      - Datable Module - generates date key

  #### Notes:
  I went in circles in how I wanted to organize this project. I began by mapping out the classes and modules I thought I would be needing. As the project progressed though I became so much more aware of how this machine is actually supposed to function. I did more research and latched on to the concept of the 'cipher' - it reminded me of a decoder ring - and I wanted to create a class within my code that emulated that same concept - a little guide showing the translation sequence.

  ### Ruby Conventions and Mechanics
  - [x] Code is properly indented, spaced, and concise
  - [x] All class, method, variable, and file names follow convention
  - [x] Most of the enumerables and data structures chosen are the most efficient
  - [x] Implemented multiple hashes in a logical manner - seen in `keyable` module and `encrypt` and `decrypt` methods.

  #### Notes:

  ### Test Driven Development
  - [x] Every class has a spec file and every method within a class is completely
  tested to verify the expected behavior.
  - [x] Module methods are tested within the Class spec file that they apply to
  - [x] Edge cases are addressed in testing:
    - [x] leading zeroes - where applicable
    - [x] special characters outside of the character set
    - [x] uppercased messages
    - [x] shift amounts greater than character set length


  - [x] Tests were written first before implementation of code
  - [x] `Simplecov` shows coverage over 99% coverage

  #### Notes:
  There were a few moments where my tests, weren't written very well prior to code being written. This came to light fairly quickly when I would begin the testing process. Any time I forgot to write a test, I would try to go back and make sure I understood how I could have written the test beforehand. There were a few moments where I did some pry exploration to understand what I was trying to accomplish.

  ### Version Control
  - [x] Over 30 commits
  - [x] Uses logical pull request workflow.

  #### Notes:
  It is awkward merging your own pull requests - I had a bit of trouble getting into the flow. I found pull requests and merging made more sense to me as part of my workflow with Futbol because other folks needed access to my updates. Here I had a little difficulty getting into that headspace, but I tried to correct that when I realized I was not doing a very good job.



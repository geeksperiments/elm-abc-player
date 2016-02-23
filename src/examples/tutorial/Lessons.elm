module Lessons
  ( Lesson
  , lessons
  ) where

{-|  Lessons in learning ABC

# Definition

# Data Types
@docs Lesson


# Functions
@docs lessons

-}

import Array exposing (Array, fromList)

type alias Lesson = 
  { title : String
  , instruction : String
  , example : String
  }

instNotes = 
   "Use the characters A-G for the notes of the octave starting from middle C and a-g for the octave above." ++
   " You can place notes next to each other or separate them with spaces - it won't make much difference to " ++
   " the sound but neighbouring notes will be 'beamed' together in a score."

xmplNotes = 
  "A B c def"

instBarsAndRests = 
  "Use the characters Z or z to represent rests and a vertical bar to introduce a bar line." ++
  " Spread out into multiple lines if you like."

xmplBarsAndRests =
  "| ABc z z def |\r\n" ++
  "| g z z z a |"

instOctaves =
  "You can reach octaves below middle C by adding one (or more) commas immediately after the note." ++
  " Similarly higher octaves can be reached using apostrophes."

xmplOctaves = 
  "| C, G, C G c g c' |"

instLongNotes =
  "So far, all our notes have had a duration of 1 unit.  You can extend this by placing a whole number" ++
  " after the note (and after the octave marker if you have one)."

xmplLongNotes =
  "| F G A B c4 g2 b2 c'4 |"

instShortNotes =
  "You can shorten a note by placing a fraction after the note.  This could be, for example," ++
  " 1/2 or 1/3. A shorthand for 1/2 is simply / and a shorthand for 1/3 is simply /3." ++
  " You can extend rests the same way."

xmplShortNotes =
  "| C3/2 G1/2 E3/2 G1/2 C3/2 G/ E3/2 G/ |"

instHornpipe =
  "The last example was in a hornpipe-like rhythm.  Because this is so common, there is a shorthand for it" ++
  " where you separate each pair of notes with the > character.  This extends the first note by half its length" ++
  " and reduces the second by the same amount."

xmplHornpipe =
  "| C>GE>G C>GE>G | c>de>d c>BA>G |"

instStrathspey =
  "Conversely, you can shorten the first note of a pair and lengthen the second by means of the < character." ++
  " This rhythm is found in strathspeys." 

xmplStrathspey =
  "| G | c2 e>c G<c e>g | c'2 b>c' a<c' g>e |"

instChords = 
   "You can play a chord by placing a group of notes, beamed together, inside square brackets - for example [CEa]." 

xmplChords = 
  "A2 Bc dcBc [CEa]"

instKeySig = 
   "So far, we have only used the white notes on the piano - i.e. the tune snippets have tended to be in the keys either" ++
   " of C Major or A Minor.  We now introduce our first header - K: for Key Signature.  Headers are placed on lines on their own" ++
   " before the melody.  In this way, we can move the last example from A Minor to A Major. This, of course, has the effect of" ++
   " sharpening every C,F and G."

xmplKeySig = 
  "K: AMajor \r\n| A2 Bc dcBc [CEa] |"

instNaturals = 
   "If your key means that certain notes are sharpened or flattened, but you need to play the 'natural' " ++
   " (unsharpened or unflattened) note, then you can override the key by using an equals symbol immediately before the note." ++
   " For example, this reverts the previous tune to a minor feel although the key is still a major one."

xmplNaturals = 
  "K: AMajor \r\n| A2 B=c d=cB=c [=CEa] |"

instAccidentals =
   "Similarly, you can sharpen a note by placing a caret symbol (^) immediately before it and flatten it using an underscore" ++
   " symbol (_). If you need a double sharp or double flat, then just double the appropriate symbol." ++
   " This example reverts the major feel although the key is now A Minor."

xmplAccidentals =
 "K: AMinor \r\n| A2 B^c d^cB^c [^CEa] |"

instUnitNote =
   "You may have noticed when we first introduced notes that we talked about their duration in 'units'.  But how long is a unit?" ++
   " So far, we have used the convention that it represents an eighth note (a quaver).  In other words, in a score, this is how" ++
   " The note would look.  We can change the unit to be a sixteenth note (a semiquaver) if we use the L: (unit note length) header" ++
   " This will have the effect of doubling the speed."

xmplUnitNote =
 "L: 1/16 \r\nA B c def"

instTempo =
   "An accurate tempo is defined by means of the Q: (tempo) header.  Up till now, we've used a default where we have 120 quarter notes per minute" ++
   " i.e 1/4=120.  We can, for example, slow down our tune firstly by reverting to a unit note length of 1/8 and secondly by explicitly reducing the " ++
   " tempo with the Q header."

xmplTempo =
 "L: 1/8 \r\nQ: 1/4=60\r\nA B c def"

instTie = "A tie joins together two notes of the same pitch.  It is indicated by placing a hyphen directly after the first note of the pair." ++
          " The second note may follow immediately, but it can be separated by spaces or even a bar line.  The effect is to play one long note" ++
          " with the combined duration of the pair.  If the notes are of different pitches, the tie will simply be ignored." 

xmplTie = "| G2 | c2c2 A2Ac | B2B2- B2AB |"

lessons : Array Lesson 
lessons =
  [
    { title = "the notes", instruction = instNotes, example = xmplNotes }
  , { title = "bars and rests", instruction = instBarsAndRests, example = xmplBarsAndRests }
  , { title = "octaves", instruction = instOctaves, example = xmplOctaves }
  , { title = "long notes", instruction = instLongNotes, example = xmplLongNotes }
  , { title = "short notes", instruction = instShortNotes, example = xmplShortNotes }
  , { title = "hornpipes", instruction = instHornpipe, example = xmplHornpipe }
  , { title = "strathspeys", instruction = instStrathspey, example = xmplStrathspey }
  , { title = "chords", instruction = instChords, example = xmplChords }
  , { title = "key signature", instruction = instKeySig, example = xmplKeySig }
  , { title = "naturals", instruction = instNaturals, example = xmplNaturals }
  , { title = "sharps and flats", instruction = instAccidentals, example = xmplAccidentals }
  , { title = "how long is a unit note?", instruction = instUnitNote, example = xmplUnitNote }
  , { title = "tempo", instruction = instTempo, example = xmplTempo }
  , { title = "tie", instruction = instTie, example = xmplTie }
  ] |> Array.fromList




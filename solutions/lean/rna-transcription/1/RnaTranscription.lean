namespace RnaTranscription

def toRna (dna : String) : String :=
  dna.map fun c =>
  if c == 'G' then 'C' else
  if c == 'C' then 'G' else
  if c == 'T' then 'A' else
  if c == 'A' then 'U' else c

end RnaTranscription

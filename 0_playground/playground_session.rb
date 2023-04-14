=begin
  EXISTING_PLAYGROUNDS_HASH = load EXISTING_PLAYGROUNDS_FILE.txt as a hash
  
  LATEST_PLAYGROUND = (last hash entry).last_character
  NEW_PLAYGROUND = LATEST_PLAYGROUND + 1

  create a file named "playground#{NEW_PLAYGROUND}.rb"

  update EXISTING_PLAYGROUNDS_FILE.txt

=end

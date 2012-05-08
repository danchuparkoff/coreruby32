=begin
  \netbeans\rubylearn\coreruby32\lib\samples\week2\???.rb

  Developer: Dan Chuparkoff (Twitter: @chuparkoff )
  Creation Date: 4/23/2012
  Initial Ruby Version: Ruby 1.9.3-p125
  Initial Development Environment: Windows 7 Home Premium - SP1
  Initial Development IDE: NetBeans 7.1.1 with Ruby for Netbeans Plugin Preview1

  This program was created as an exercise in the RubyLearning PORPC101-32C Course.
  http://rubylearning.com

  This program illustrates
=end

# Main ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
DOC_PATH = './files'
doc_name = 'text.txt'

  # Read
  doc = File.new("#{DOC_PATH}/#{doc_name}", 'r')
  doc_line_ct = 0
  whole_string = ''
  while this_line = doc.gets
    doc_line_ct += 1
    whole_string << this_line
  end
  doc.close

  # Compute
  doc_char_ct           = whole_string.length
  doc_nonwhite_char_ct  = whole_string.gsub(/\s+/, "").length
  doc_word_ct           = whole_string.split.length
  doc_sentence_ct       = whole_string.split(/[.!?]/).length
  doc_paragraph_ct      = whole_string.split("\n\n").length
  words_per_sent        = doc_word_ct.to_f / doc_sentence_ct
  sents_per_para        = doc_sentence_ct.to_f / doc_paragraph_ct

  # Display
  puts <<-analyzer_output
    Lines:                        #{doc_line_ct}
    Characters:                   #{doc_char_ct}
    Nonwhite Chars:               #{doc_nonwhite_char_ct}
    Words:                        #{doc_word_ct}
    Sentences:                    #{doc_sentence_ct}
    Paragraphs:                   #{doc_paragraph_ct}
    Avg Words per Sentence:       #{'%.3f' % words_per_sent}
    Avg Sentences per Paragraph:  #{'%.3f' % sents_per_para}
  analyzer_output
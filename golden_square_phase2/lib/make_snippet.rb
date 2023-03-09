def make_snippet(text)
    #return text

    #first find how many words are there and then count first five swoirds and then ...
    words = text.split(" ")
    if words.length <= 5
        return text
    else
        first_five_words = words[0,5].join(" ")
        return first_five_words + " ..."
    end
end
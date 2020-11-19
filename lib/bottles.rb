class Bottles

  def bottlesString(beerCount, shouldCapitalize = false)
    if (beerCount == 0 && shouldCapitalize)
      "No more bottles of beer"
    elsif (beerCount == 0)
      "no more bottles of beer"
    elsif (beerCount == 1)
      "1 bottle of beer"
    else
      "#{beerCount} bottles of beer"
    end
  end

  def actionString(beerCount)
    if (beerCount == 0)
      "Go to the store and buy some more"
    elsif (beerCount == 1)
      "Take it down and pass it around"
    else
      "Take one down and pass it around"
    end
  end

  def verse(beerCount)
    endBeerCount = beerCount == 0 ? 99 : beerCount - 1

    "#{bottlesString(beerCount, shouldCapitalize = true)} on the wall, " +
    "#{bottlesString(beerCount)}.\n" +
    "#{actionString(beerCount)}, " +
    "#{bottlesString(endBeerCount)} on the wall.\n"
  end

  def verses(startBeerCount, endBeerCount)
    verses = startBeerCount.downto(endBeerCount).map do |beerCount|
      verse(beerCount)
    end
    verses.join("\n")
  end

  def song
    verses(99,0)
  end

end

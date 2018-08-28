defmodule Bowling do
 
  def score([frame | []]) do
    Enum.reduce(frame, 0, fn(score, acc) -> score + acc end)
  end

  def score([[10, 0] | rest]) do
    10 + next_two_rolls(rest) + score(rest)
  end
  def score([[first, second] | rest]) when first + second == 10 do
    10 + next_roll(rest) + score(rest)
  end

  def score([frame | rest]) do
    score([frame]) + score(rest)
  end

  defp next_roll([[first | _] | _]) do
    first
  end

  # defp next_two_rolls([[first, second, _]]) do
  #   first + second
  # end

  defp next_two_rolls([[10, 0] | rest]) do
    10 + next_roll(rest)
  end
  defp next_two_rolls([frame | _]) do
    score([frame])
  end
end


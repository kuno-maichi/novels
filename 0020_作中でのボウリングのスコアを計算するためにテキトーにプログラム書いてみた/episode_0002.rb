def score(frames)
  rest = frames
  total = 0
  frame_count = 1
  while rest != []
    current_frame = rest[0]
    a, b = current_frame
    if rest.length == 1
      c = current_frame[2]
      total += a + b + c
    else
      if a == 10
        total += strike(rest, frame_count)
      elsif a + b == 10
        total += apre(rest, frame_count)
      else
        total += a + b
      end
      frame_count += 1
    end
    rest = rest[1...]
  end
  total
end


def spare(frames, frame_count)
  10 + frames[1][0]
end

def strike(frames, frame_count)
  score = 10
  if frame_count == 9
    score += frames[1][0] + frames[1][1]
  ## frame_count should be <= 9
  elsif frames[1][0] == 10
    score += 10 + frames[2][0]
  else
    score += frames[1][0] + frames[1][1]
  end
  score
end

frames = [
    [0, 0],
    [0, 0],
    [0, 0],
    [0, 0],
    [0, 0],
    [0, 0],
    [0, 0],
    [135, 0],
    [10, 0],
    [10, 0, 0]
]
puts score(frames) # 165
frames = [
    [10, 0],
    [10, 0],
    [10, 0],
    [10, 0],
    [10, 0],
    [10, 0],
    [10, 0],
    [10, 0],
    [10, 0],
    [10, 10, 10]
]
puts score(frames) # 300

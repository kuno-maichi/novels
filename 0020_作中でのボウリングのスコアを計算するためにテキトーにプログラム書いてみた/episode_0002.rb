def score(frames)
  rest = frames
  total = 0
  frame_count = 1
  while rest != []
    current_frame = rest[0]
    a, b = current_frame
    if frame_count == 10
      c = current_frame[2]
      if a == 10
        total += 10 + b + c
      elsif a + b == 10
        total += 10 + c
      else
        total += a + b
      end
    else
      if a == 10
        total += 10 + rest[1][0] + rest[1][1]
      elsif a + b == 10
        total += 10 + rest[1][0]
      else
        total += a + b
      end
      frame_count += 1
    end
    rest = rest[1...]
  end
  total
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

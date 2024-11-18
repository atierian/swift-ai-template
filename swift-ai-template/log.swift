func log(
  _ value: Any,
  fileID: String = #fileID,
  line: Int = #line,
  function: String = #function
) {
  print(
    """
    [\(fileID):\(line)] [\(function)]
    >> \(value)
    """
  )
}

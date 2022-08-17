"""
read_delim(path; args...)

Read contents of `path` to DataFrame. `args...` passed to `uCSV.read`.
"""
function read_delim(path; args...)
    open(path) do io
        uCSV.read(io; args...)
    end |>
        DataFrame
end

"""
read_csv(path; args...)

Read contents of CSV file at `path` to DataFrame. `args...` passed to `uCSV.read`.
"""
function read_csv(path; args...)
  read_delim(path; delim = ',', args...)
end

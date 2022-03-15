defmodule Snap.Aggregation do
  @moduledoc """
  Represents an individual aggregation dictionary from a
  [Search Aggregation API](https://www.elastic.co/guide/en/elasticsearch/reference/current/search-aggregations.html)
  response.
  """
  defstruct ~w[
    buckets
    interval
    doc_count_error_upper_bound
    sum_other_doc_count
    value
    doc_count
  ]a

  def new(response) do
    %__MODULE__{
      buckets: response["buckets"],
      interval: response["interval"],
      doc_count_error_upper_bound: response["doc_count_error_upper_bound"],
      sum_other_doc_count: response["sum_other_doc_count"],
      value: response["value"],
      doc_count: response["doc_count"]
    }
  end

  @type t :: %__MODULE__{
          buckets: list(map()),
          interval: integer(),
          doc_count_error_upper_bound: integer(),
          sum_other_doc_count: integer(),
          value: integer(),
          doc_count: integer()
        }
end

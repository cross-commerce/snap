defmodule Snap.Config do
  @moduledoc false

  def get(config_name, otp_app) do
    Application.get_env(:snap, otp_app)[config_name]
  end

  def put_env_config(otp_app, cluster, config) do
    Application.put_env(:snap, otp_app, [{cluster, config}])
  end
end

defmodule ElixirApi.Supplies.Scheduler do
  use GenServer

  alias ElixirApi.Supplies.ExpirationNotification

  def init(state \\ %{}) do
    schedule_notification()
    {:ok, state}
  end

  def handle_info(msg, state) do
    ExpirationNotification.send()

    schedule_notification()

    {:noreply, state}
  end

  defp schedule_notification do
    Process.send_after(self(), :generate, 1000 * 10)
  end
end

class CommentsChannel < ApplicationCable::Channel
  def follow
    stream_from "tweet_comments"
  end

  def unfollow
    stop_all_streams
  end
end
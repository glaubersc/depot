module CounterStore
  private
    def set_counter

      if session[:counter].nil?
        session[:counter] = 0
        @counter = 0
        return
      end

      session[:counter] += 1
      @counter = session[:counter]
    end  

    def reset_counter
      session[:counter] = 0
      @counter = 0
    end
end
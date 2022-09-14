class NotesController < ApplicationController
  def index
  end

  def show
    @note_id = params[:id]
    @looks_data  = [1, 3, 2]
    @aroma_data  = [0, 1, 2, 3, 3] # 0: モルト, 1: ホップ, 2: エステル, 3: フルーティー, 4: その他
    @flavor_data = [1, 3, 3, 2, 2]
    @comment = "非常に美味しかったです！\nまた飲みたいです！"
    @brewery_info = "HOGEHOGE Brewery"
    @beer_style = "Weastcoast IPA"
    @srm = 5
    @ibu = 20
    @abv = 5
  end
end

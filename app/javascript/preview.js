document.addEventListener('DOMContentLoaded', function(){

  for ( let num = 1; num <= 3; num++) { 
    // 新規投稿・編集ページのフォームを取得
    const postForm = document.getElementById('new_note');
    // プレビューを表示するためのスペースを取得
    const previewList = document.getElementById(`previews${num}`);
    // 新規投稿・編集ページのフォームがないならここで終了。「!」は論理否定演算子。
    if (!postForm) return null;

    // input要素を取得
    const fileField = document.querySelector(`input[type="file"][name="note[images][]"][id="note_images_${num}"]`);
    // input要素で値の変化が起きた際に呼び出される関数
    fileField.addEventListener('change', function(e){
      const file = e.target.files[0];
      const blob = window.URL.createObjectURL(file);
      // 画像を表示するためのdiv要素を生成
      const previewWrapper = document.createElement('div');
      previewWrapper.setAttribute('class', 'preview');
      // 表示する画像を生成
      const previewImage = document.createElement('img');
      previewImage.setAttribute('class', 'preview-image');
      previewImage.setAttribute('src', blob);

      // 生成したHTMLの要素をブラウザに表示させる
      previewList.appendChild(previewImage);
    });
  }

});
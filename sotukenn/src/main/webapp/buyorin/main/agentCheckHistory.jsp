<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>履歴確認・給料明細</title>
<style>
  * { box-sizing: border-box; }
  body {
    margin: 0;
    font-family: "Hiragino Sans", "Meiryo", sans-serif;
    color: #333;
    background: #fff;
  }
  header { position: relative; height: 64px; padding: 16px 24px; }
  .logo { font-size: 14px; line-height: 1.4; }
  .menu-icon { position: absolute; right: 24px; top: 20px; width: 28px; cursor: pointer; }
  .menu-icon span { display: block; height: 2px; background: #333; margin-bottom: 7px; }

  .wrap { max-width: 640px; margin: 0 auto; padding: 0 16px; }
  .tabs { display: flex; justify-content: center; position: relative; z-index: 1; margin-bottom: -1px; }
  .tab {
    width: 180px; height: 48px; font-size: 22px; color: #333; background: #fff;
    border: 1px solid #333; border-radius: 12px 12px 0 0; cursor: pointer;
  }
  .tab.active { background: #f8cecc; border-color: #b85450; }

  .card { border: 1px solid #333; border-radius: 48px; padding: 40px 32px 32px; min-height: 360px; }
  .panel { display: none; }
  .panel.active { display: block; }

  .history-list { max-height: 320px; overflow-y: auto; padding-right: 8px; }
  details { border: 1px solid #333; border-radius: 10px; margin-bottom: 20px; background: #fff; }
  summary {
    list-style: none; display: flex; justify-content: space-between;
    align-items: center; padding: 12px 16px; cursor: pointer;
  }
  summary::-webkit-details-marker { display: none; }
  summary::after { content: "\25BD"; font-size: 20px; }
  details[open] summary::after { content: "\25B3"; }
  .detail-body { padding: 8px 16px 16px; border-top: 1px solid #ccc; font-size: 14px; line-height: 1.8; }
  .detail-body dt { float: left; width: 6em; color: #666; }
  .detail-body dd { margin: 0 0 0 6em; }

  table { border-collapse: collapse; width: 100%; font-size: 14px; }
  th, td { border: 1px solid #333; padding: 6px 8px; text-align: left; }
  caption { border: 1px solid #333; border-bottom: none; padding: 6px; text-align: center; font-size: 15px; }
  td.num { text-align: right; }
  .total-table { width: 60%; margin: 24px 0 0 auto; }
  .empty { text-align: center; color: #888; padding: 24px 0; }

  .back-area { text-align: center; margin: 24px 0 32px; }
  .btn-back {
    width: 108px; height: 44px; font-size: 16px; color: #333;
    background: #dae8fc; border: 1px solid #6c8ebf; cursor: pointer;
  }
</style>
</head>
<body>

<header>
  <div class="logo">買い物代行<br>お使い便</div>
  <div class="menu-icon"><span></span><span></span><span></span></div>
</header>

<div class="wrap">

  <div class="tabs">
    <button type="button" class="tab active" data-target="panel-history">履歴確認</button>
    <button type="button" class="tab" data-target="panel-salary">給料明細</button>
  </div>

  <div class="card">

    <!-- 履歴確認 -->
    <div id="panel-history" class="panel active">
      <div class="history-list">
        <c:choose>
          <c:when test="${not empty historyList}">
            <c:forEach var="h" items="${historyList}">
              <details>
                <summary>
                  <span><c:out value="${h.date}" />　依頼ID：<c:out value="${h.requestId}" /></span>
                </summary>
                <div class="detail-body">
                  <dl>
                    <dt>依頼ID</dt><dd><c:out value="${h.requestId}" /></dd>
                    <dt>日付</dt><dd><c:out value="${h.date}" /></dd>
                    <dt>依頼内容</dt><dd><c:out value="${h.content}" /></dd>
                    <dt>届け先</dt><dd><c:out value="${h.address}" /></dd>
                    <dt>立替</dt><dd><c:out value="${h.advance}" />円</dd>
                    <dt>報酬</dt><dd><c:out value="${h.reward}" />円</dd>
                    <dt>状態</dt><dd><c:out value="${h.status}" /></dd>
                  </dl>
                </div>
              </details>
            </c:forEach>
          </c:when>
          <c:otherwise>
            <p class="empty">履歴はありません</p>
          </c:otherwise>
        </c:choose>
      </div>
    </div>

    <!-- 給料明細 -->
    <div id="panel-salary" class="panel">
      <table>
        <caption>給与明細</caption>
        <thead>
          <tr>
            <th>日付</th>
            <th>依頼ID</th>
            <th>立替</th>
            <th>報酬</th>
            <th>小計</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="s" items="${salaryList}">
            <tr>
              <td><c:out value="${s.date}" /></td>
              <td><c:out value="${s.requestId}" /></td>
              <td class="num"><c:out value="${s.advance}" /></td>
              <td class="num"><c:out value="${s.reward}" /></td>
              <td class="num"><c:out value="${s.subtotal}" /></td>
            </tr>
          </c:forEach>
        </tbody>
      </table>

      <table class="total-table">
        <tr>
          <th>合計</th>
          <td class="num"><c:out value="${totalAdvance}" /></td>
          <td class="num"><c:out value="${totalReward}" /></td>
          <td class="num"><c:out value="${totalSubtotal}" /></td>
        </tr>
      </table>
    </div>

  </div>

  <div class="back-area">
    <button type="button" class="btn-back" onclick="history.back()">戻る</button>
  </div>

</div>

<script>
  document.querySelectorAll('.tab').forEach(function (tab) {
    tab.addEventListener('click', function () {
      document.querySelectorAll('.tab').forEach(function (t) { t.classList.remove('active'); });
      document.querySelectorAll('.panel').forEach(function (p) { p.classList.remove('active'); });
      tab.classList.add('active');
      document.getElementById(tab.dataset.target).classList.add('active');
    });
  });
</script>

</body>
</html>
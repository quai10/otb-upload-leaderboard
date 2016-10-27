<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Bandwidth leaderboard</title>
    </head>
    <body>
        <table>
            {foreach $hosts as $i=>$host}
                <tr>
                    <th>{$i + 1}</th>
                    <td>{$host->ip}</td>
                    <td>{$host->hostname}</td>
                    <td><span title="Download">⬇</span> {$host->getReadableDownload()}/s</td>
                    <td><span title="Upload">⬆</span> {$host->getReadableUpload()}/s</td>
                </tr>
            {/foreach}
        </table>
    </body>
</html>

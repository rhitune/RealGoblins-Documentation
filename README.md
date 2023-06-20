<body>
  <h1>Documentation of RealGoblins Auto CCS Lua Executor.</h1>

  <h2>Functions</h2>
  <table>
    <tr>
      <th>Function</th>
      <th>Description</th>
    </tr>
    <tr>
      <td>sleep(200)</td>
      <td>Pauses the execution for 200 milliseconds.</td>
    </tr>
    <tr>
      <td>wear(itemid)</td>
      <td>Wears an item, such as a pickaxe.</td>
    </tr>
    <tr>
      <td>enter()</td>
      <td>enter the door on localpos</td>
    </tr>
    <tr>
      <td>punch(x,y)</td>
      <td>send punch to x,y</td>
    </tr>
    <tr>
      <td>wrench(x,y)</td>
      <td>send wrench to x,y</td>
    </tr>
    <tr>
      <td>move(x,y)</td>
      <td>move to spesific x,y</td>
    </tr>
    <tr>
      <td>place(itemid,x,y)</td>
      <td>place block to spesific x,y</td>
    </tr>
    <tr>
      <td>say(string message)</td>
      <td>send text packet</td>
    </tr>
    <tr>
      <td>sendpacket(2,"action")</td>
      <td>send packet</td>
    </tr>
    <tr>
      <td>collectSet(true,range)</td>
      <td>set autocollect on spesific range</td>
    </tr>
    <tr>
      <td>collect(range)</td>
      <td>autocollect</td>
    </tr>
    <tr>
      <td>collect(range,itemid)</td>
      <td>autocollect with ignored itemid</td>
    </tr>
    <tr>
      <td>findItem(itemid)</td>
      <td>gives amount of target item</td>
    </tr>
    <tr>
      <td>addBot(username,password)</td>
      <td>add bot to list</td>
    </tr>
    <tr>
      <td>addBot(username,password,proxy)</td>
      <td>add bot with proxy to list</td>
    </tr>
    <tr>
      <td>removeBot(username)</td>
      <td>remove bot from list</td>
    </tr>
    <tr>
      <td>findPath(x,)</td>
      <td>pathfind on spesific location</td>
    </tr>
    <tr>
      <td>setBool("boolname" , true/false)</td>
      <td>setBool("Auto Reconnect" , true)</td>
    </tr>
    <tr>
      <td>disconnect()</td>
      <td>disconnect bot</td>
    </tr>
    <tr>
      <td>getClothes()</td>
      <td>returns all weared items</td>
    </tr>
    <tr>
      <td>findClothes(itemid)</td>
      <td>returns true or false if item is weared</td>
    </tr>
    <tr>
      <td>getSignal()</td>
      <td>returns geiger signal, null / red / yellow / green / rapid green</td>
    </tr>
    <tr>
      <td>getPing()</td>
      <td>returns ping value of bot</td>
    </tr>
    <tr>
      <td>request(type,url)</td>
      <td>request("GET" , "https://asd.com") posibble types ; "GET" , "POST", "PATCH"</td>
    </tr>
  </table>

  <h2>getBot()</h2>
  <ul>
    <li><code>getBot()</code>: Returns the local bot.</li>
    <li><code>getBot("targetbotname")</code>: Returns targetbot.</li>
    <li><code>getBot().world</code>: Returns current world of bot.</li>
    <li><code>getBot().status</code>: Returns status of bot.</li>
    <li><code>getBot().x</code>: Returns pos x of bot.</li>
    <li><code>getBot().y</code>: Returns pos y of bot.</li>
    <li><code>getBot().slots</code>: Returns amount of inventory slots</li>
    <li><code>getBot()level</code>: Returns amount of inventory slots</li>
    <li><code>getBot().captcha</code>: Returns captcha status (there are 3 captcha status 1- Solved , 2-Wrong Answer , 3- Couldn't solve)</li>
  </ul>

  <h2>getBots()</h2>
  <ul>
    <li><code>bot.name</code>: Returns bot name</li>
    <li><code>bot.world</code>: Returns current world of bot.</li>
    <li><code>bot.status</code>: Returns status of bot.</li>
    <li><code>bot.x</code>: Returns pos x of bot.</li>
    <li><code>bot.y</code>: Returns pos y of bot.</li>
  </ul>
  <p>Example Usage 1</p>
  <pre><code>for _, bot in pairs(getBots()) do
       say(bot.name)
       sleep(4000)
  end</code></pre>
  <p>Example Usage 2</p>
  <pre><code>say(getBot().name)</code></pre>
  <h2>getTile()</h2>
  <ul>
    <li><code>getTile(x,y).fg</code>: Returns foreground</li>
    <li><code>getTile(x,y).bg</code>: Returns background</li>
    <li><code>getTile(x,y).data</code>: Returns extra data, you can check the itemid inside of the vend.</li>
    <li><code>getTile(x,y).ready</code>: Returns boolean ( check if tree is ready to harvest )</li>
    <li><code>getTile(x,y).flags</code>: Returns flags</li>
</ul>
<h2>getTiles()</h2>
<ul>
    <li><code>tile.fg</code>: Returns foreground</li>
    <li><code>tile.bg</code>: Returns background</li>
    <li><code>tile.x</code>: Returns pos x</li>
    <li><code>tile.y</code>: Returns pos y</li>
    <li><code>tile.data</code>: Returns extra data</li>
    <li><code>tile.ready</code>: Returns boolean</li>
    <li><code>tile.flags</code>: Returns flags</li>
</ul>
<p>Example Usage 1</p>
<pre><code>for _, tile in pairs(getTiles()) do
    if tile.fg == 242 then
        say("Found world lock at : " .. tile.x .. ", " .. tile.y)
    end
end
</code></pre>
<p>Example Usage 2</p>
<pre><code>if getTile(55,23).ready then
    say("Ready to harvest")
    else
    say("Not ready to harvest")
end
</code></pre>
<h2>getObjects()</h2>
<ul>
    <li><code>object.id</code>: Returns itemid</li>
    <li><code>object.count</code>: Returns block amount</li>
    <li><code>object.x</code>: Returns pos x</li>
    <li><code>object.y</code>: Returns pos y</li>
    <li><code>object.oid</code>: Returns object id</li>
</ul>
<p>Example Usage</p>
<pre><code>for _, object in pairs(getObjects()) do
    print(object.id)
end
</code></pre>
<h2>getPlayers()</h2>
<ul>
    <li><code>player.name</code>: Returns name</li>
    <li><code>player.netid</code>: Returns netid</li>
    <li><code>player.userid</code>: Returns userid</li>
    <li><code>player.country</code>: Returns country</li>
</ul>
<p>Example Usage</p>
<pre><code>for _, player in pairs(getPlayers()) do
    say(player.name)
end
</code></pre>
<h2>getInventory()</h2>
<ul>
    <li><code>item.name</code>: Returns name</li>
    <li><code>item.id</code>: Returns id</li>
    <li><code>item.count</code>: Returns count</li>
</ul>
<p>Example Usage</p>
<pre><code>for _, item in pairs(getInventory()) do
    print(item.name)
end
</code></pre>
<h2>Webhook</h2>
<pre><code>wh = {}
wh.url
wh.username
wh.content
wh.avatar
wh.embed
wh.edit --boolean(true/false)(sends PATCH if true)

webhook(wh) -- send discord webhook
</code></pre>
<h2>SendPacketRaw</h2>
<pre><code>pkt = {}
pkt.type --0
pkt.flags --12
pkt.int_data --20
pkt.pos_x --24
pkt.pos_y --28
pkt.pos2_x --32
pkt.pos2_y --36
pkt.int_x --44
pkt.int_y --48
sendPacketRaw(pkt) --sends game packet
</code></pre>

</body>

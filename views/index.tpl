% from datetime import datetime

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link type="text/css" href="/static/style.css" rel="stylesheet"/>
    </head>
    <body>
    <section>
        % include('header.tpl')

        <div class = "linkar">
            % listi = []
            % for x in data['results']:
                % if x['company'] not in listi:
                    % listi.append(x['company'])
                % end
           % end
           <ul>
           % for x in range(0, len(listi), 1):
                <li><a href="/bensinstodvar/{{listi[x]}}"><h2>{{listi[x]}}</h2></a></li>
           % end
           </ul>
        </div>

        <div class= "verd">
            % laegsta_bensinverd = None
            % laegsta_bensinstod = None
            % laegsta_dieselverd = None
            % laegsta_dieselstod = None

            % for x in data['results']:
                % if laegsta_bensinverd == None:
                    % laegsta_bensinverd = x['bensin95']
                    % laegsta_bensinstod = x['company']
                % end
                % if laegsta_dieselverd == None:
                    % laegsta_dieselverd = x['diesel']
                    % laegsta_dieselstod = x['company']
                % end
                % if x['bensin95'] < laegsta_bensinverd:
                    % laegsta_bensinverd = x['bensin95']
                    % laegsta_bensinstod = x['company']
                % end
                % if x['diesel'] < laegsta_dieselverd:
                    % laegsta_dieselverd = x['diesel']
                    % laegsta_dieselstod = x['company']
                % end
            % end

            <h3>Ódýrasta bensínverð: {{laegsta_bensinverd}}kr/ltr</h3>
            <h3>Söluaðili: {{laegsta_bensinstod}}</h3>

            <h3>Ódýrasta dieselverð: {{laegsta_dieselverd}}kr/ltr</h3>
            <h3>Söluaðili: {{laegsta_dieselstod}}</h3>
        </div>
        <div class="mynd">
            <img src="/static/bak.jpg" alt="Bottle">
        </div>
        <div class ="timi">
            % uppfaert = datetime.strptime(data['timestampPriceCheck'][:19], '%Y-%m-%dT%H:%M:%S')
            % dags = uppfaert.strftime('%d.%m %Y ')
            % timi = uppfaert.strftime('%H:%M:%S')
            <h4>Síðast uppfært: {{dags}} klukkan {{timi}}</h4>
        </div>

        % include('footer.tpl')
    </section>
    </body>
</html>
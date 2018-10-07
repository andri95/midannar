<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link type="text/css" href="/static/style.css" rel="stylesheet"/>
    </head>
    <body>
    <section>
        % include('header.tpl')
        <h2>{{bensinstod}}</h2>

        </div>
        <div class ="stodvar">
            <table>
                <tr>
                    <th>Bensínstöð</th>
                    <th>95 Oktan</th>
                    <th>Diesel</th>
                </tr>
                % count = 0
                % for x in data['results']:
                    % if x['company'] == bensinstod:
                        % count = count + 1
                        <tr>
                            <td>{{x['name']}}</td>
                            <td>{{x['bensin95']}}</td>
                            <td>{{x['diesel']}}</td>
                        </tr>
                    % end
                % end
            </table>
            <h3>Fjöldi bensínstöðva: {{count}}</h3>
        </div>

        % include('footer.tpl')
        </section>
    </body>
</html>
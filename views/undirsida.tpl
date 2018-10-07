% include('header.tpl')
<h2>{{bensinstod}}</h2>
<div class = "linkar">
    % listi = []
    % count = 0
    % for x in data['results']:
        % if x['company'] == bensinstod:
            % count = count + 1
        % end
    % end
    <h3>Fjöldi bensínstöðva: {{count}}</h3>
</div>

% include('footer.tpl')
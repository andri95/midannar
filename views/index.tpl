<h1>BENZIN</h1>
<div class = "linkar">
    % listi = []
    % for x in data['results']:
        % for i in x:
            % if x['company'] not in listi:
                % listi.append(x['company'])
    % end
    <ul>
        % for x in listi:
            <li><a href="/listi[x]> {{listi[x]}} </a></li>
        % end
    </ul>
</div>
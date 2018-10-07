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
        <li><a href="/listi/{{listi[x]}}"><h2>{{listi[x]}}</h2></a></li>
   % end
   </ul>
</div>

% include('footer.tpl')
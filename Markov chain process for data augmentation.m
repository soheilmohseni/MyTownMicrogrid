transition_probabilities = [0.1 0.9;0.8 0.2]; starting_value = 1; chain_length = 1000;
    chain = zeros(1,chain_length);
    chain(1)=starting_value;
    for i=2:chain_length
        this_step_distribution = transition_probabilities(chain(i-1),:);
        cumulative_distribution = cumsum(this_step_distribution);
        r = rand();
        chain(i) = find(cumulative_distribution>r,1);
    end
    

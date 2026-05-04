init_policy_prior(prior, pomdp, sol) = prior
init_belief_encoder(encoder, pomdp, sol) = encoder

belief_features(::Nothing, pomdp::POMDP, b::ScenarioBelief) = b
belief_features(f::Function, pomdp::POMDP, b::ScenarioBelief) = f(pomdp, b)

action_prior(::Nothing, pomdp::POMDP, x_b, a) = 1.0
action_prior(f::Function, pomdp::POMDP, x_b, a) = convert(Float64, f(pomdp, x_b, a))

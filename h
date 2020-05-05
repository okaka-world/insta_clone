
[1mFrom:[0m /home/ec2-user/insta_clone/vender/bundle/ruby/2.6.0/gems/activesupport-5.2.4.2/lib/active_support/notifications/instrumenter.rb:29 ActiveSupport::Notifications::Instrumenter#instrument:

    [1;34m19[0m: [32mdef[0m [1;34minstrument[0m(name, payload = {})
    [1;34m20[0m:   [1;34m# some of the listeners might have state[0m
    [1;34m21[0m:   listeners_state = start name, payload
    [1;34m22[0m:   [32mbegin[0m
    [1;34m23[0m:     [32myield[0m payload
    [1;34m24[0m:   [32mrescue[0m [1;34;4mException[0m => e
    [1;34m25[0m:     payload[[33m:exception[0m] = [e.class.name, e.message]
    [1;34m26[0m:     payload[[33m:exception_object[0m] = e
    [1;34m27[0m:     raise e
    [1;34m28[0m:   [32mensure[0m
 => [1;34m29[0m:     finish_with_state listeners_state, name, payload
    [1;34m30[0m:   [32mend[0m
    [1;34m31[0m: [32mend[0m


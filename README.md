# swiftlintDemo
 Swiftlint tutorial application 

 What is SwiftLint?
 A tool to enforce Swift style and conventions, loosely based on the now archived GitHub Swift Style Guide. SwiftLint enforces the style guide rules that are generally accepted by the Swift community. These rules are well described in popular style guides like Kodeco's Swift Style Guide.

SwiftLint hooks into Clang and SourceKit to use the AST representation of your source files for more accurate results.


My ruleset for this tutorial:

opt_in_rules:
    - closure_end_indentation
    - closure_spacing
    - empty_count
    - explict_init
    - fatal_error_message
    - first_where
    - operator_usage_whitespace
    - overridden_super_call
    - prohibited_super_call
    - redundant_nil_coalescing
    - multiline_parameters
    - vertical_parameter_alignment_on_call
    - missing_docs
    - joined_default_parameters
    
disabled_rules:
    - unused_setter_value
    - file_length
    - file_header
    - discarded_notification_center_observer
    - empty_enum_arguments
    
excluded:
    - Carthage
    - Pods
    
identifier_name:
    min_length: 20
    max_length:
        warning: 50
        error: 60

function_body_length:
    warning: 70
    error: 120

custom_rules:
    no_direct_standard_out_logs:
        name: "Writing log messages directly to standard out is disallowed"
        regex: "(\\bprint|\\bdebugprint|\\bdump|Swift\\.print|Swift\\.debugPrint|Swift\\.dump)\\s*\\("
        match_kinds:
            - identifier
            - message: "Don't commit 'print(_)' , 'debugPrint(_)' , or 'dump(_)' "
            - severity: warning

----------------------------------------------------------------------------------------------------
Links and resources:
- SwiftLint Rules -> https://realm.github.io/SwiftLint/rule-directory.html
- SwiftLint Docs -> https://github.com/realm/SwiftLint

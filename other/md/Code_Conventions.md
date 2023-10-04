# General Information

Commands prefixed with a # (octothorpe) indicate that they must be executed with root privileges. Replace this character with 'sudo' or switch to the root user in your terminal as necessary.

The _ (underscore) conventionally serves as the default substitute for the space character.

## Naming Conventions Guide (WIP)
__As of the time of writing, all following conventions are in place merely to provide a template for future decisions.__

### Casing Types

snake_case:
    All lowercase letters.
    Words are separated by underscores.

Example: my_variable_name

kebab-case:
    All lowercase letters.
    Words are separated by hyphens.

Example: my-variable-name

camelCase:
    The first word starts with a lowercase letter.
    Subsequent words start with uppercase letters, with no separators.

Example: myVariableName

PascalCase (or UpperCamelCase):
    Similar to camelCase but with the first word starting with an uppercase letter.

Example: MyClassName

UPPERCASE:
    All capital letters.
    Typically used for constants.

Example: MAX_SIZE

Title Case:
    The first letter of each word is capitalized.
    Often used for headings or titles.

Example: This Is a Title

SNAKE_UPPER_CASE:
    All uppercase letters.
    Words are separated by underscores.
    Used for constants.

Example: MAX_BUFFER_SIZE

Train-Case (or PascalKebabCase):
    Similar to kebab-case, but with the first letter of each word capitalized.

Example: My-Train-Case-Variable

MACRO_CASE:
    All uppercase letters.
    Words are separated by underscores.
    Commonly used for preprocessor macros in languages like C and C++.

Example: DEBUG_MODE_ENABLED

dot.case:
    All lowercase letters.
    Words are separated by dots.
    Used in certain contexts, such as package or domain names.

Example: com.example.my_package

UPPER_SNAKE_CASE:
    All uppercase letters.
    Words are separated by underscores.
    Similar to SNAKE_UPPER_CASE but with all uppercase letters.

Example: CONSTANT_VALUE

UPPER_KEBAB_CASE:
    All uppercase letters.
    Words are separated by hyphens.
    Similar to kebab-case but with all uppercase letters.

Example: CONFIGURATION-OPTION

Hungarian Notation:
    Prefixes variable names with a lowercase abbreviation indicating the variable's type.
    Not as common in modern programming but was more prevalent in older codebases.

Example: strName, intCount

Camel_Snake_Case:
    A combination of camelCase and snake_case.
    Words are separated by underscores, and the first word is in camelCase.

Example: myVariable_Name

SCREAMING_SNAKE_CASE:
    All uppercase letters.
    Words are separated by underscores.
    Intended for constants, especially in languages where constants are treated differently.

Example: ERROR_MESSAGE
    
### Object Naming

File Names:

    Format: Lowercase letters, underscores to separate words.

    Recommendation: Indicate file type or purpose concisely.

    Example: main_script.py, utility_functions.cpp

Variable Names:

    Format: Lowercase letters, underscores to separate words.

    Recommendation: Be descriptive and meaningful.

    Example: user_age, total_amount

Function Names:

    Format: Lowercase letters, underscores to separate words.

    Recommendation: Be descriptive, use verbs for actions.

    Example: calculate_total(), validate_input()

Class Names:

    Format: CamelCase.

    Recommendation: Use nouns, be descriptive.

    Example: UserData, FileManager

Constants:

    Format: Uppercase letters, underscores to separate words.

    Recommendation: Be explicit, provide context.

    Example: MAX_BUFFER_SIZE, PI_VALUE

Global Variables:

    Format: Same as regular variables, use sparingly.

    Recommendation: Clearly indicate global scope.

    Example: g_global_counter

Private Variables:

    Format: Same as regular variables, start with a single underscore.

    Recommendation: Intended for internal use within a class or module.

    Example: _internal_data

Function Arguments:

    Format: Follow the same rules as regular variables.

    Recommendation: Be descriptive about expected content.

    Example: calculate_total(price, quantity)

Local Variables:

    Format: Same as regular variables.

    Recommendation: Keep scope small, use meaningful names.

    Example: temp_result, counter

Parameters (e.g., in function/method signatures):

    Format: Follow the same rules as regular variables.

    Recommendation: Clearly communicate expected content.

    Example: def process_data(input_data, config_options)

Module-level Constants:

    Format: Uppercase letters, underscores to separate words.

    Recommendation: Provide context about purpose.

    Example: MODULE_NAME, DEFAULT_TIMEOUT

Enum Types:

    Format: Uppercase letters, underscores to separate words.

    Recommendation: Be descriptive, use singular form.

    Example: ColorEnum, StatusOptions

Acronyms and Initialisms:

    Recommendation: Treat as one word if short, use underscores if long.

    Example: HTTPRequest, XML_parser

Abbreviations:

    Recommendation: Avoid unless widely accepted and clear.

Boolean Variables:

    Recommendation: Start with "is," "has," or appropriate verb.
    Example: is_valid, has_permission

Iterator Variables:

    Recommendation: Short and meaningful in the context of iteration.

    Example: for item in items:
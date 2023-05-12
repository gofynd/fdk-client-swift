

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponAddSchema
         Used By: Cart
     */

    class CouponAddSchema: Codable {
        public var author: CouponAuthorSchema?

        public var validity: ValiditySchema

        public var displayMeta: DisplayMetaSchema

        public var ruleDefinition: RuleDefinitionSchema

        public var dateMeta: CouponDateMetaSchema?

        public var state: StateSchema?

        public var action: CouponActionSchema?

        public var code: String

        public var ownership: OwnershipSchema

        public var validation: ValidationSchema?

        public var schedule: CouponScheduleSchema?

        public var typeSlug: String

        public var identifiers: IdentifierSchema

        public var rule: [RuleSchema]

        public var tags: [String]?

        public var restrictions: RestrictionsSchema?

        public enum CodingKeys: String, CodingKey {
            case author

            case validity

            case displayMeta = "display_meta"

            case ruleDefinition = "rule_definition"

            case dateMeta = "date_meta"

            case state

            case action

            case code

            case ownership

            case validation

            case schedule = "_schedule"

            case typeSlug = "type_slug"

            case identifiers

            case rule

            case tags

            case restrictions
        }

        public init(action: CouponActionSchema? = nil, author: CouponAuthorSchema? = nil, code: String, dateMeta: CouponDateMetaSchema? = nil, displayMeta: DisplayMetaSchema, identifiers: IdentifierSchema, ownership: OwnershipSchema, restrictions: RestrictionsSchema? = nil, rule: [RuleSchema], ruleDefinition: RuleDefinitionSchema, state: StateSchema? = nil, tags: [String]? = nil, typeSlug: String, validation: ValidationSchema? = nil, validity: ValiditySchema, schedule: CouponScheduleSchema? = nil) {
            self.author = author

            self.validity = validity

            self.displayMeta = displayMeta

            self.ruleDefinition = ruleDefinition

            self.dateMeta = dateMeta

            self.state = state

            self.action = action

            self.code = code

            self.ownership = ownership

            self.validation = validation

            self.schedule = schedule

            self.typeSlug = typeSlug

            self.identifiers = identifiers

            self.rule = rule

            self.tags = tags

            self.restrictions = restrictions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                author = try container.decode(CouponAuthorSchema.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(ValiditySchema.self, forKey: .validity)

            displayMeta = try container.decode(DisplayMetaSchema.self, forKey: .displayMeta)

            ruleDefinition = try container.decode(RuleDefinitionSchema.self, forKey: .ruleDefinition)

            do {
                dateMeta = try container.decode(CouponDateMetaSchema.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(StateSchema.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(CouponActionSchema.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            ownership = try container.decode(OwnershipSchema.self, forKey: .ownership)

            do {
                validation = try container.decode(ValidationSchema.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CouponScheduleSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            identifiers = try container.decode(IdentifierSchema.self, forKey: .identifiers)

            rule = try container.decode([RuleSchema].self, forKey: .rule)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(RestrictionsSchema.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
        }
    }
}

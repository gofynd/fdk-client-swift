

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponAddSchema
         Used By: Cart
     */

    class CouponAddSchema: Codable {
        public var validity: ValiditySchema

        public var state: StateSchema?

        public var action: CouponActionSchema?

        public var identifiers: IdentifierSchema

        public var ruleDefinition: RuleDefinitionSchema

        public var displayMeta: DisplayMetaSchema

        public var author: CouponAuthorSchema?

        public var restrictions: RestrictionsSchema?

        public var validation: ValidationSchema?

        public var ownership: OwnershipSchema

        public var schedule: CouponScheduleSchema?

        public var tags: [String]?

        public var rule: [RuleSchema]

        public var typeSlug: String

        public var code: String

        public var dateMeta: CouponDateMetaSchema?

        public enum CodingKeys: String, CodingKey {
            case validity

            case state

            case action

            case identifiers

            case ruleDefinition = "rule_definition"

            case displayMeta = "display_meta"

            case author

            case restrictions

            case validation

            case ownership

            case schedule = "_schedule"

            case tags

            case rule

            case typeSlug = "type_slug"

            case code

            case dateMeta = "date_meta"
        }

        public init(action: CouponActionSchema? = nil, author: CouponAuthorSchema? = nil, code: String, dateMeta: CouponDateMetaSchema? = nil, displayMeta: DisplayMetaSchema, identifiers: IdentifierSchema, ownership: OwnershipSchema, restrictions: RestrictionsSchema? = nil, rule: [RuleSchema], ruleDefinition: RuleDefinitionSchema, state: StateSchema? = nil, tags: [String]? = nil, typeSlug: String, validation: ValidationSchema? = nil, validity: ValiditySchema, schedule: CouponScheduleSchema? = nil) {
            self.validity = validity

            self.state = state

            self.action = action

            self.identifiers = identifiers

            self.ruleDefinition = ruleDefinition

            self.displayMeta = displayMeta

            self.author = author

            self.restrictions = restrictions

            self.validation = validation

            self.ownership = ownership

            self.schedule = schedule

            self.tags = tags

            self.rule = rule

            self.typeSlug = typeSlug

            self.code = code

            self.dateMeta = dateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            validity = try container.decode(ValiditySchema.self, forKey: .validity)

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

            identifiers = try container.decode(IdentifierSchema.self, forKey: .identifiers)

            ruleDefinition = try container.decode(RuleDefinitionSchema.self, forKey: .ruleDefinition)

            displayMeta = try container.decode(DisplayMetaSchema.self, forKey: .displayMeta)

            do {
                author = try container.decode(CouponAuthorSchema.self, forKey: .author)

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

            do {
                validation = try container.decode(ValidationSchema.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(OwnershipSchema.self, forKey: .ownership)

            do {
                schedule = try container.decode(CouponScheduleSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rule = try container.decode([RuleSchema].self, forKey: .rule)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            code = try container.decode(String.self, forKey: .code)

            do {
                dateMeta = try container.decode(CouponDateMetaSchema.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
        }
    }
}

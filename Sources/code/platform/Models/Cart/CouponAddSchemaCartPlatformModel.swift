

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponAddSchema
         Used By: Cart
     */

    class CouponAddSchema: Codable {
        public var rule: [RuleSchema]

        public var identifiers: IdentifierSchema

        public var ruleDefinition: RuleDefinitionSchema

        public var validity: ValiditySchema

        public var ownership: OwnershipSchema

        public var author: CouponAuthorSchema?

        public var tags: [String]?

        public var restrictions: RestrictionsSchema?

        public var state: StateSchema?

        public var action: CouponActionSchema?

        public var validation: ValidationSchema?

        public var typeSlug: String

        public var dateMeta: CouponDateMetaSchema?

        public var code: String

        public var schedule: CouponScheduleSchema?

        public var displayMeta: DisplayMetaSchema

        public enum CodingKeys: String, CodingKey {
            case rule

            case identifiers

            case ruleDefinition = "rule_definition"

            case validity

            case ownership

            case author

            case tags

            case restrictions

            case state

            case action

            case validation

            case typeSlug = "type_slug"

            case dateMeta = "date_meta"

            case code

            case schedule = "_schedule"

            case displayMeta = "display_meta"
        }

        public init(action: CouponActionSchema? = nil, author: CouponAuthorSchema? = nil, code: String, dateMeta: CouponDateMetaSchema? = nil, displayMeta: DisplayMetaSchema, identifiers: IdentifierSchema, ownership: OwnershipSchema, restrictions: RestrictionsSchema? = nil, rule: [RuleSchema], ruleDefinition: RuleDefinitionSchema, state: StateSchema? = nil, tags: [String]? = nil, typeSlug: String, validation: ValidationSchema? = nil, validity: ValiditySchema, schedule: CouponScheduleSchema? = nil) {
            self.rule = rule

            self.identifiers = identifiers

            self.ruleDefinition = ruleDefinition

            self.validity = validity

            self.ownership = ownership

            self.author = author

            self.tags = tags

            self.restrictions = restrictions

            self.state = state

            self.action = action

            self.validation = validation

            self.typeSlug = typeSlug

            self.dateMeta = dateMeta

            self.code = code

            self.schedule = schedule

            self.displayMeta = displayMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rule = try container.decode([RuleSchema].self, forKey: .rule)

            identifiers = try container.decode(IdentifierSchema.self, forKey: .identifiers)

            ruleDefinition = try container.decode(RuleDefinitionSchema.self, forKey: .ruleDefinition)

            validity = try container.decode(ValiditySchema.self, forKey: .validity)

            ownership = try container.decode(OwnershipSchema.self, forKey: .ownership)

            do {
                author = try container.decode(CouponAuthorSchema.self, forKey: .author)

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

            do {
                restrictions = try container.decode(RestrictionsSchema.self, forKey: .restrictions)

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

            do {
                validation = try container.decode(ValidationSchema.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                dateMeta = try container.decode(CouponDateMetaSchema.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            do {
                schedule = try container.decode(CouponScheduleSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMetaSchema.self, forKey: .displayMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
        }
    }
}

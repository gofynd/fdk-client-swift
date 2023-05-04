

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponAddSchema
         Used By: Cart
     */

    class CouponAddSchema: Codable {
        public var identifiers: IdentifierSchema

        public var dateMeta: CouponDateMetaSchema?

        public var restrictions: RestrictionsSchema?

        public var state: StateSchema?

        public var ruleDefinition: RuleDefinitionSchema

        public var rule: [RuleSchema]

        public var code: String

        public var schedule: CouponScheduleSchema?

        public var action: CouponActionSchema?

        public var tags: [String]?

        public var typeSlug: String

        public var displayMeta: DisplayMetaSchema

        public var ownership: OwnershipSchema

        public var validation: ValidationSchema?

        public var author: CouponAuthorSchema?

        public var validity: ValiditySchema

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case dateMeta = "date_meta"

            case restrictions

            case state

            case ruleDefinition = "rule_definition"

            case rule

            case code

            case schedule = "_schedule"

            case action

            case tags

            case typeSlug = "type_slug"

            case displayMeta = "display_meta"

            case ownership

            case validation

            case author

            case validity
        }

        public init(action: CouponActionSchema? = nil, author: CouponAuthorSchema? = nil, code: String, dateMeta: CouponDateMetaSchema? = nil, displayMeta: DisplayMetaSchema, identifiers: IdentifierSchema, ownership: OwnershipSchema, restrictions: RestrictionsSchema? = nil, rule: [RuleSchema], ruleDefinition: RuleDefinitionSchema, state: StateSchema? = nil, tags: [String]? = nil, typeSlug: String, validation: ValidationSchema? = nil, validity: ValiditySchema, schedule: CouponScheduleSchema? = nil) {
            self.identifiers = identifiers

            self.dateMeta = dateMeta

            self.restrictions = restrictions

            self.state = state

            self.ruleDefinition = ruleDefinition

            self.rule = rule

            self.code = code

            self.schedule = schedule

            self.action = action

            self.tags = tags

            self.typeSlug = typeSlug

            self.displayMeta = displayMeta

            self.ownership = ownership

            self.validation = validation

            self.author = author

            self.validity = validity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(IdentifierSchema.self, forKey: .identifiers)

            do {
                dateMeta = try container.decode(CouponDateMetaSchema.self, forKey: .dateMeta)

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

            ruleDefinition = try container.decode(RuleDefinitionSchema.self, forKey: .ruleDefinition)

            rule = try container.decode([RuleSchema].self, forKey: .rule)

            code = try container.decode(String.self, forKey: .code)

            do {
                schedule = try container.decode(CouponScheduleSchema.self, forKey: .schedule)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            displayMeta = try container.decode(DisplayMetaSchema.self, forKey: .displayMeta)

            ownership = try container.decode(OwnershipSchema.self, forKey: .ownership)

            do {
                validation = try container.decode(ValidationSchema.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(CouponAuthorSchema.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(ValiditySchema.self, forKey: .validity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(validity, forKey: .validity)
        }
    }
}

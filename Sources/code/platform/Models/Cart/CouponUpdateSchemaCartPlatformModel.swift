

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponUpdateSchema
         Used By: Cart
     */

    class CouponUpdateSchema: Codable {
        public var validity: ValiditySchema

        public var restrictions: RestrictionsSchema?

        public var ownership: OwnershipSchema

        public var dateMeta: CouponDateMetaSchema?

        public var identifiers: IdentifierSchema

        public var rule: [RuleSchema]

        public var validation: ValidationSchema?

        public var action: CouponActionSchema?

        public var schedule: CouponScheduleSchema?

        public var displayMeta: DisplayMetaSchema

        public var typeSlug: String

        public var ruleDefinition: RuleDefinitionSchema

        public var code: String

        public var author: CouponAuthorSchema?

        public var tags: [String]?

        public var state: StateSchema?

        public enum CodingKeys: String, CodingKey {
            case validity

            case restrictions

            case ownership

            case dateMeta = "date_meta"

            case identifiers

            case rule

            case validation

            case action

            case schedule = "_schedule"

            case displayMeta = "display_meta"

            case typeSlug = "type_slug"

            case ruleDefinition = "rule_definition"

            case code

            case author

            case tags

            case state
        }

        public init(action: CouponActionSchema? = nil, author: CouponAuthorSchema? = nil, code: String, dateMeta: CouponDateMetaSchema? = nil, displayMeta: DisplayMetaSchema, identifiers: IdentifierSchema, ownership: OwnershipSchema, restrictions: RestrictionsSchema? = nil, rule: [RuleSchema], ruleDefinition: RuleDefinitionSchema, state: StateSchema? = nil, tags: [String]? = nil, typeSlug: String, validation: ValidationSchema? = nil, validity: ValiditySchema, schedule: CouponScheduleSchema? = nil) {
            self.validity = validity

            self.restrictions = restrictions

            self.ownership = ownership

            self.dateMeta = dateMeta

            self.identifiers = identifiers

            self.rule = rule

            self.validation = validation

            self.action = action

            self.schedule = schedule

            self.displayMeta = displayMeta

            self.typeSlug = typeSlug

            self.ruleDefinition = ruleDefinition

            self.code = code

            self.author = author

            self.tags = tags

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            validity = try container.decode(ValiditySchema.self, forKey: .validity)

            do {
                restrictions = try container.decode(RestrictionsSchema.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(OwnershipSchema.self, forKey: .ownership)

            do {
                dateMeta = try container.decode(CouponDateMetaSchema.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(IdentifierSchema.self, forKey: .identifiers)

            rule = try container.decode([RuleSchema].self, forKey: .rule)

            do {
                validation = try container.decode(ValidationSchema.self, forKey: .validation)

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
                schedule = try container.decode(CouponScheduleSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMetaSchema.self, forKey: .displayMeta)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            ruleDefinition = try container.decode(RuleDefinitionSchema.self, forKey: .ruleDefinition)

            code = try container.decode(String.self, forKey: .code)

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
                state = try container.decode(StateSchema.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}

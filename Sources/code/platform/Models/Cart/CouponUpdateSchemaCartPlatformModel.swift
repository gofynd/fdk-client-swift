

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponUpdateSchema
         Used By: Cart
     */

    class CouponUpdateSchema: Codable {
        public var restrictions: RestrictionsSchema?

        public var tags: [String]?

        public var identifiers: IdentifierSchema

        public var state: StateSchema?

        public var action: CouponActionSchema?

        public var ownership: OwnershipSchema

        public var ruleDefinition: RuleDefinitionSchema

        public var author: CouponAuthorSchema?

        public var dateMeta: CouponDateMetaSchema?

        public var displayMeta: DisplayMetaSchema

        public var validation: ValidationSchema?

        public var schedule: CouponScheduleSchema?

        public var code: String

        public var validity: ValiditySchema

        public var typeSlug: String

        public var rule: [RuleSchema]

        public enum CodingKeys: String, CodingKey {
            case restrictions

            case tags

            case identifiers

            case state

            case action

            case ownership

            case ruleDefinition = "rule_definition"

            case author

            case dateMeta = "date_meta"

            case displayMeta = "display_meta"

            case validation

            case schedule = "_schedule"

            case code

            case validity

            case typeSlug = "type_slug"

            case rule
        }

        public init(action: CouponActionSchema? = nil, author: CouponAuthorSchema? = nil, code: String, dateMeta: CouponDateMetaSchema? = nil, displayMeta: DisplayMetaSchema, identifiers: IdentifierSchema, ownership: OwnershipSchema, restrictions: RestrictionsSchema? = nil, rule: [RuleSchema], ruleDefinition: RuleDefinitionSchema, state: StateSchema? = nil, tags: [String]? = nil, typeSlug: String, validation: ValidationSchema? = nil, validity: ValiditySchema, schedule: CouponScheduleSchema? = nil) {
            self.restrictions = restrictions

            self.tags = tags

            self.identifiers = identifiers

            self.state = state

            self.action = action

            self.ownership = ownership

            self.ruleDefinition = ruleDefinition

            self.author = author

            self.dateMeta = dateMeta

            self.displayMeta = displayMeta

            self.validation = validation

            self.schedule = schedule

            self.code = code

            self.validity = validity

            self.typeSlug = typeSlug

            self.rule = rule
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                restrictions = try container.decode(RestrictionsSchema.self, forKey: .restrictions)

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

            identifiers = try container.decode(IdentifierSchema.self, forKey: .identifiers)

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

            ownership = try container.decode(OwnershipSchema.self, forKey: .ownership)

            ruleDefinition = try container.decode(RuleDefinitionSchema.self, forKey: .ruleDefinition)

            do {
                author = try container.decode(CouponAuthorSchema.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(CouponDateMetaSchema.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMetaSchema.self, forKey: .displayMeta)

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

            code = try container.decode(String.self, forKey: .code)

            validity = try container.decode(ValiditySchema.self, forKey: .validity)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            rule = try container.decode([RuleSchema].self, forKey: .rule)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(rule, forKey: .rule)
        }
    }
}

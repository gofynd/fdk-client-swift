

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponUpdateSchema
         Used By: Cart
     */

    class CouponUpdateSchema: Codable {
        public var identifiers: IdentifierSchema

        public var restrictions: RestrictionsSchema?

        public var dateMeta: CouponDateMetaSchema?

        public var tags: [String]?

        public var validation: ValidationSchema?

        public var ruleDefinition: RuleDefinitionSchema

        public var schedule: CouponScheduleSchema?

        public var rule: [RuleSchema]

        public var ownership: OwnershipSchema

        public var code: String

        public var typeSlug: String

        public var state: StateSchema?

        public var action: CouponActionSchema?

        public var validity: ValiditySchema

        public var author: CouponAuthorSchema?

        public var displayMeta: DisplayMetaSchema

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case restrictions

            case dateMeta = "date_meta"

            case tags

            case validation

            case ruleDefinition = "rule_definition"

            case schedule = "_schedule"

            case rule

            case ownership

            case code

            case typeSlug = "type_slug"

            case state

            case action

            case validity

            case author

            case displayMeta = "display_meta"
        }

        public init(action: CouponActionSchema? = nil, author: CouponAuthorSchema? = nil, code: String, dateMeta: CouponDateMetaSchema? = nil, displayMeta: DisplayMetaSchema, identifiers: IdentifierSchema, ownership: OwnershipSchema, restrictions: RestrictionsSchema? = nil, rule: [RuleSchema], ruleDefinition: RuleDefinitionSchema, state: StateSchema? = nil, tags: [String]? = nil, typeSlug: String, validation: ValidationSchema? = nil, validity: ValiditySchema, schedule: CouponScheduleSchema? = nil) {
            self.identifiers = identifiers

            self.restrictions = restrictions

            self.dateMeta = dateMeta

            self.tags = tags

            self.validation = validation

            self.ruleDefinition = ruleDefinition

            self.schedule = schedule

            self.rule = rule

            self.ownership = ownership

            self.code = code

            self.typeSlug = typeSlug

            self.state = state

            self.action = action

            self.validity = validity

            self.author = author

            self.displayMeta = displayMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(IdentifierSchema.self, forKey: .identifiers)

            do {
                restrictions = try container.decode(RestrictionsSchema.self, forKey: .restrictions)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            ruleDefinition = try container.decode(RuleDefinitionSchema.self, forKey: .ruleDefinition)

            do {
                schedule = try container.decode(CouponScheduleSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rule = try container.decode([RuleSchema].self, forKey: .rule)

            ownership = try container.decode(OwnershipSchema.self, forKey: .ownership)

            code = try container.decode(String.self, forKey: .code)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

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

            validity = try container.decode(ValiditySchema.self, forKey: .validity)

            do {
                author = try container.decode(CouponAuthorSchema.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMetaSchema.self, forKey: .displayMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
        }
    }
}

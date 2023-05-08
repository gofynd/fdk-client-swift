

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponUpdateSchema
         Used By: Cart
     */

    class CouponUpdateSchema: Codable {
        public var typeSlug: String

        public var schedule: CouponScheduleSchema?

        public var validity: ValiditySchema

        public var tags: [String]?

        public var dateMeta: CouponDateMetaSchema?

        public var state: StateSchema?

        public var identifiers: IdentifierSchema

        public var ownership: OwnershipSchema

        public var restrictions: RestrictionsSchema?

        public var author: CouponAuthorSchema?

        public var validation: ValidationSchema?

        public var action: CouponActionSchema?

        public var displayMeta: DisplayMetaSchema

        public var rule: [RuleSchema]

        public var code: String

        public var ruleDefinition: RuleDefinitionSchema

        public enum CodingKeys: String, CodingKey {
            case typeSlug = "type_slug"

            case schedule = "_schedule"

            case validity

            case tags

            case dateMeta = "date_meta"

            case state

            case identifiers

            case ownership

            case restrictions

            case author

            case validation

            case action

            case displayMeta = "display_meta"

            case rule

            case code

            case ruleDefinition = "rule_definition"
        }

        public init(action: CouponActionSchema? = nil, author: CouponAuthorSchema? = nil, code: String, dateMeta: CouponDateMetaSchema? = nil, displayMeta: DisplayMetaSchema, identifiers: IdentifierSchema, ownership: OwnershipSchema, restrictions: RestrictionsSchema? = nil, rule: [RuleSchema], ruleDefinition: RuleDefinitionSchema, state: StateSchema? = nil, tags: [String]? = nil, typeSlug: String, validation: ValidationSchema? = nil, validity: ValiditySchema, schedule: CouponScheduleSchema? = nil) {
            self.typeSlug = typeSlug

            self.schedule = schedule

            self.validity = validity

            self.tags = tags

            self.dateMeta = dateMeta

            self.state = state

            self.identifiers = identifiers

            self.ownership = ownership

            self.restrictions = restrictions

            self.author = author

            self.validation = validation

            self.action = action

            self.displayMeta = displayMeta

            self.rule = rule

            self.code = code

            self.ruleDefinition = ruleDefinition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                schedule = try container.decode(CouponScheduleSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            validity = try container.decode(ValiditySchema.self, forKey: .validity)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                state = try container.decode(StateSchema.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(IdentifierSchema.self, forKey: .identifiers)

            ownership = try container.decode(OwnershipSchema.self, forKey: .ownership)

            do {
                restrictions = try container.decode(RestrictionsSchema.self, forKey: .restrictions)

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

            displayMeta = try container.decode(DisplayMetaSchema.self, forKey: .displayMeta)

            rule = try container.decode([RuleSchema].self, forKey: .rule)

            code = try container.decode(String.self, forKey: .code)

            ruleDefinition = try container.decode(RuleDefinitionSchema.self, forKey: .ruleDefinition)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
        }
    }
}

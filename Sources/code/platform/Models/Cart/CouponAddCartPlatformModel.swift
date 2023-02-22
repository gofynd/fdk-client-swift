

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponAdd
         Used By: Cart
     */

    class CouponAdd: Codable {
        public var rule: [Rule]

        public var restrictions: Restrictions?

        public var ruleDefinition: RuleDefinition

        public var action: CouponAction?

        public var schedule: CouponSchedule?

        public var displayMeta: DisplayMeta

        public var identifiers: Identifier

        public var ownership: Ownership

        public var validity: Validity

        public var author: CouponAuthor?

        public var typeSlug: String

        public var code: String

        public var validation: Validation?

        public var dateMeta: CouponDateMeta?

        public var state: State?

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case rule

            case restrictions

            case ruleDefinition = "rule_definition"

            case action

            case schedule = "_schedule"

            case displayMeta = "display_meta"

            case identifiers

            case ownership

            case validity

            case author

            case typeSlug = "type_slug"

            case code

            case validation

            case dateMeta = "date_meta"

            case state

            case tags
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.rule = rule

            self.restrictions = restrictions

            self.ruleDefinition = ruleDefinition

            self.action = action

            self.schedule = schedule

            self.displayMeta = displayMeta

            self.identifiers = identifiers

            self.ownership = ownership

            self.validity = validity

            self.author = author

            self.typeSlug = typeSlug

            self.code = code

            self.validation = validation

            self.dateMeta = dateMeta

            self.state = state

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            code = try container.decode(String.self, forKey: .code)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(State.self, forKey: .state)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}



import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponAdd
         Used By: Cart
     */

    class CouponAdd: Codable {
        public var identifiers: Identifier

        public var code: String

        public var ruleDefinition: RuleDefinition

        public var validity: Validity

        public var rule: [Rule]

        public var restrictions: Restrictions?

        public var schedule: CouponSchedule?

        public var tags: [String]?

        public var validation: Validation?

        public var displayMeta: DisplayMeta

        public var dateMeta: CouponDateMeta?

        public var typeSlug: String

        public var ownership: Ownership

        public var action: CouponAction?

        public var author: CouponAuthor?

        public var state: State?

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case code

            case ruleDefinition = "rule_definition"

            case validity

            case rule

            case restrictions

            case schedule = "_schedule"

            case tags

            case validation

            case displayMeta = "display_meta"

            case dateMeta = "date_meta"

            case typeSlug = "type_slug"

            case ownership

            case action

            case author

            case state
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.identifiers = identifiers

            self.code = code

            self.ruleDefinition = ruleDefinition

            self.validity = validity

            self.rule = rule

            self.restrictions = restrictions

            self.schedule = schedule

            self.tags = tags

            self.validation = validation

            self.displayMeta = displayMeta

            self.dateMeta = dateMeta

            self.typeSlug = typeSlug

            self.ownership = ownership

            self.action = action

            self.author = author

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            code = try container.decode(String.self, forKey: .code)

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            validity = try container.decode(Validity.self, forKey: .validity)

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}

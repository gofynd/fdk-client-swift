

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var code: String

        public var ruleDefinition: RuleDefinition

        public var schedule: CouponSchedule?

        public var action: CouponAction?

        public var validation: Validation?

        public var identifiers: Identifier

        public var author: CouponAuthor?

        public var restrictions: Restrictions?

        public var tags: [String]?

        public var state: State?

        public var dateMeta: CouponDateMeta?

        public var displayMeta: DisplayMeta

        public var ownership: Ownership

        public var rule: [Rule]

        public var validity: Validity

        public var typeSlug: String

        public enum CodingKeys: String, CodingKey {
            case code

            case ruleDefinition = "rule_definition"

            case schedule = "_schedule"

            case action

            case validation

            case identifiers

            case author

            case restrictions

            case tags

            case state

            case dateMeta = "date_meta"

            case displayMeta = "display_meta"

            case ownership

            case rule

            case validity

            case typeSlug = "type_slug"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.code = code

            self.ruleDefinition = ruleDefinition

            self.schedule = schedule

            self.action = action

            self.validation = validation

            self.identifiers = identifiers

            self.author = author

            self.restrictions = restrictions

            self.tags = tags

            self.state = state

            self.dateMeta = dateMeta

            self.displayMeta = displayMeta

            self.ownership = ownership

            self.rule = rule

            self.validity = validity

            self.typeSlug = typeSlug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

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

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

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
                state = try container.decode(State.self, forKey: .state)

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

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            rule = try container.decode([Rule].self, forKey: .rule)

            validity = try container.decode(Validity.self, forKey: .validity)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)
        }
    }
}

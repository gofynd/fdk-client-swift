

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var ownership: Ownership

        public var ruleDefinition: RuleDefinition

        public var validity: Validity

        public var rule: [Rule]

        public var restrictions: Restrictions?

        public var state: State?

        public var action: CouponAction?

        public var displayMeta: DisplayMeta

        public var identifiers: Identifier

        public var author: CouponAuthor?

        public var dateMeta: CouponDateMeta?

        public var code: String

        public var tags: [String]?

        public var typeSlug: String

        public var validation: Validation?

        public var schedule: CouponSchedule?

        public enum CodingKeys: String, CodingKey {
            case ownership

            case ruleDefinition = "rule_definition"

            case validity

            case rule

            case restrictions

            case state

            case action

            case displayMeta = "display_meta"

            case identifiers

            case author

            case dateMeta = "date_meta"

            case code

            case tags

            case typeSlug = "type_slug"

            case validation

            case schedule = "_schedule"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.ownership = ownership

            self.ruleDefinition = ruleDefinition

            self.validity = validity

            self.rule = rule

            self.restrictions = restrictions

            self.state = state

            self.action = action

            self.displayMeta = displayMeta

            self.identifiers = identifiers

            self.author = author

            self.dateMeta = dateMeta

            self.code = code

            self.tags = tags

            self.typeSlug = typeSlug

            self.validation = validation

            self.schedule = schedule
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

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
                state = try container.decode(State.self, forKey: .state)

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

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

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

            code = try container.decode(String.self, forKey: .code)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(schedule, forKey: .schedule)
        }
    }
}

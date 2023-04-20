

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var validation: Validation?

        public var tags: [String]?

        public var typeSlug: String

        public var ownership: Ownership

        public var state: State?

        public var dateMeta: CouponDateMeta?

        public var ruleDefinition: RuleDefinition

        public var schedule: CouponSchedule?

        public var restrictions: Restrictions?

        public var action: CouponAction?

        public var identifiers: Identifier

        public var validity: Validity

        public var author: CouponAuthor?

        public var code: String

        public var displayMeta: DisplayMeta

        public var rule: [Rule]

        public enum CodingKeys: String, CodingKey {
            case validation

            case tags

            case typeSlug = "type_slug"

            case ownership

            case state

            case dateMeta = "date_meta"

            case ruleDefinition = "rule_definition"

            case schedule = "_schedule"

            case restrictions

            case action

            case identifiers

            case validity

            case author

            case code

            case displayMeta = "display_meta"

            case rule
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.validation = validation

            self.tags = tags

            self.typeSlug = typeSlug

            self.ownership = ownership

            self.state = state

            self.dateMeta = dateMeta

            self.ruleDefinition = ruleDefinition

            self.schedule = schedule

            self.restrictions = restrictions

            self.action = action

            self.identifiers = identifiers

            self.validity = validity

            self.author = author

            self.code = code

            self.displayMeta = displayMeta

            self.rule = rule
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

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

            ownership = try container.decode(Ownership.self, forKey: .ownership)

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

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

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
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            validity = try container.decode(Validity.self, forKey: .validity)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            rule = try container.decode([Rule].self, forKey: .rule)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(rule, forKey: .rule)
        }
    }
}

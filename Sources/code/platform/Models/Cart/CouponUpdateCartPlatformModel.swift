

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var validity: Validity

        public var rule: [Rule]

        public var author: CouponAuthor?

        public var identifiers: Identifier

        public var displayMeta: DisplayMeta

        public var typeSlug: String

        public var code: String

        public var action: CouponAction?

        public var ownership: Ownership

        public var schedule: CouponSchedule?

        public var ruleDefinition: RuleDefinition

        public var dateMeta: CouponDateMeta?

        public var validation: Validation?

        public var tags: [String]?

        public var restrictions: Restrictions?

        public var state: State?

        public enum CodingKeys: String, CodingKey {
            case validity

            case rule

            case author

            case identifiers

            case displayMeta = "display_meta"

            case typeSlug = "type_slug"

            case code

            case action

            case ownership

            case schedule = "_schedule"

            case ruleDefinition = "rule_definition"

            case dateMeta = "date_meta"

            case validation

            case tags

            case restrictions

            case state
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.validity = validity

            self.rule = rule

            self.author = author

            self.identifiers = identifiers

            self.displayMeta = displayMeta

            self.typeSlug = typeSlug

            self.code = code

            self.action = action

            self.ownership = ownership

            self.schedule = schedule

            self.ruleDefinition = ruleDefinition

            self.dateMeta = dateMeta

            self.validation = validation

            self.tags = tags

            self.restrictions = restrictions

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            validity = try container.decode(Validity.self, forKey: .validity)

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            code = try container.decode(String.self, forKey: .code)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}

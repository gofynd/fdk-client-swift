

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var state: State?

        public var validation: Validation?

        public var dateMeta: CouponDateMeta?

        public var schedule: CouponSchedule?

        public var typeSlug: String

        public var rule: [Rule]

        public var tags: [String]?

        public var identifiers: Identifier

        public var action: CouponAction?

        public var restrictions: Restrictions?

        public var author: CouponAuthor?

        public var ownership: Ownership

        public var code: String

        public var validity: Validity

        public var ruleDefinition: RuleDefinition

        public var displayMeta: DisplayMeta

        public enum CodingKeys: String, CodingKey {
            case state

            case validation

            case dateMeta = "date_meta"

            case schedule = "_schedule"

            case typeSlug = "type_slug"

            case rule

            case tags

            case identifiers

            case action

            case restrictions

            case author

            case ownership

            case code

            case validity

            case ruleDefinition = "rule_definition"

            case displayMeta = "display_meta"
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.state = state

            self.validation = validation

            self.dateMeta = dateMeta

            self.schedule = schedule

            self.typeSlug = typeSlug

            self.rule = rule

            self.tags = tags

            self.identifiers = identifiers

            self.action = action

            self.restrictions = restrictions

            self.author = author

            self.ownership = ownership

            self.code = code

            self.validity = validity

            self.ruleDefinition = ruleDefinition

            self.displayMeta = displayMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                state = try container.decode(State.self, forKey: .state)

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
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

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

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

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
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            code = try container.decode(String.self, forKey: .code)

            validity = try container.decode(Validity.self, forKey: .validity)

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(validity, forKey: .validity)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
        }
    }
}

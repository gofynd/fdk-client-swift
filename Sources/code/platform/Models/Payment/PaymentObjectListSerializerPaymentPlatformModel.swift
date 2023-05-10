

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var collectedBy: String

        public var userObject: [String: Any]

        public var paymentModeIdentifier: String

        public var refundedBy: String

        public var currentStatus: String

        public var currency: String

        public var companyId: String

        public var createdOn: String

        public var amountInPaisa: String

        public var id: String

        public var paymentMode: String

        public var paymentId: String?

        public var allStatus: [String]

        public var applicationId: String

        public var refundObject: [String: Any]?

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentGateway: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case collectedBy = "collected_by"

            case userObject = "user_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundedBy = "refunded_by"

            case currentStatus = "current_status"

            case currency

            case companyId = "company_id"

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"

            case id

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case applicationId = "application_id"

            case refundObject = "refund_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.collectedBy = collectedBy

            self.userObject = userObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundedBy = refundedBy

            self.currentStatus = currentStatus

            self.currency = currency

            self.companyId = companyId

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa

            self.id = id

            self.paymentMode = paymentMode

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.refundObject = refundObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(String.self, forKey: .companyId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            id = try container.decode(String.self, forKey: .id)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var collectedBy: String

        public var userObject: [String: Any]

        public var paymentModeIdentifier: String

        public var refundedBy: String

        public var currentStatus: String

        public var currency: String

        public var companyId: String

        public var createdOn: String

        public var amountInPaisa: String

        public var id: String

        public var paymentMode: String

        public var paymentId: String?

        public var allStatus: [String]

        public var applicationId: String

        public var refundObject: [String: Any]?

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentGateway: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case collectedBy = "collected_by"

            case userObject = "user_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case refundedBy = "refunded_by"

            case currentStatus = "current_status"

            case currency

            case companyId = "company_id"

            case createdOn = "created_on"

            case amountInPaisa = "amount_in_paisa"

            case id

            case paymentMode = "payment_mode"

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case applicationId = "application_id"

            case refundObject = "refund_object"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.collectedBy = collectedBy

            self.userObject = userObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.refundedBy = refundedBy

            self.currentStatus = currentStatus

            self.currency = currency

            self.companyId = companyId

            self.createdOn = createdOn

            self.amountInPaisa = amountInPaisa

            self.id = id

            self.paymentMode = paymentMode

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.refundObject = refundObject

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            currency = try container.decode(String.self, forKey: .currency)

            companyId = try container.decode(String.self, forKey: .companyId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            id = try container.decode(String.self, forKey: .id)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

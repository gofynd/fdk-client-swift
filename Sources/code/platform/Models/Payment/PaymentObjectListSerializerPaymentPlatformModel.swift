

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var amountInPaisa: String

        public var paymentModeIdentifier: String

        public var paymentId: String?

        public var currency: String

        public var allStatus: [String]

        public var applicationId: String

        public var refundedBy: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var currentStatus: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var companyId: String

        public var modifiedOn: String

        public var paymentGateway: String

        public var paymentMode: String

        public var id: String

        public var refundObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case amountInPaisa = "amount_in_paisa"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentId = "payment_id"

            case currency

            case allStatus = "all_status"

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case createdOn = "created_on"

            case userObject = "user_object"

            case currentStatus = "current_status"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case id

            case refundObject = "refund_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.amountInPaisa = amountInPaisa

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentId = paymentId

            self.currency = currency

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.createdOn = createdOn

            self.userObject = userObject

            self.currentStatus = currentStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.id = id

            self.refundObject = refundObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(refundObject, forKey: .refundObject)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var amountInPaisa: String

        public var paymentModeIdentifier: String

        public var paymentId: String?

        public var currency: String

        public var allStatus: [String]

        public var applicationId: String

        public var refundedBy: String

        public var createdOn: String

        public var userObject: [String: Any]

        public var currentStatus: String

        public var aggregatorPaymentObject: [String: Any]?

        public var collectedBy: String

        public var companyId: String

        public var modifiedOn: String

        public var paymentGateway: String

        public var paymentMode: String

        public var id: String

        public var refundObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case amountInPaisa = "amount_in_paisa"

            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentId = "payment_id"

            case currency

            case allStatus = "all_status"

            case applicationId = "application_id"

            case refundedBy = "refunded_by"

            case createdOn = "created_on"

            case userObject = "user_object"

            case currentStatus = "current_status"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case collectedBy = "collected_by"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case id

            case refundObject = "refund_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.amountInPaisa = amountInPaisa

            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentId = paymentId

            self.currency = currency

            self.allStatus = allStatus

            self.applicationId = applicationId

            self.refundedBy = refundedBy

            self.createdOn = createdOn

            self.userObject = userObject

            self.currentStatus = currentStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.collectedBy = collectedBy

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.id = id

            self.refundObject = refundObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            id = try container.decode(String.self, forKey: .id)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(refundObject, forKey: .refundObject)
        }
    }
}

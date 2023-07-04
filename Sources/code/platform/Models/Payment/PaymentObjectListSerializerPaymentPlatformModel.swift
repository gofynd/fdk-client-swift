

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var applicationId: String

        public var allStatus: [String]

        public var refundedBy: String

        public var refundObject: [String: Any]?

        public var currency: String

        public var amountInPaisa: String

        public var currentStatus: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var id: String

        public var paymentModeIdentifier: String

        public var companyId: String

        public var paymentGateway: String

        public var paymentMode: String

        public var createdOn: String

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case applicationId = "application_id"

            case allStatus = "all_status"

            case refundedBy = "refunded_by"

            case refundObject = "refund_object"

            case currency

            case amountInPaisa = "amount_in_paisa"

            case currentStatus = "current_status"

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case companyId = "company_id"

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case paymentId = "payment_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.applicationId = applicationId

            self.allStatus = allStatus

            self.refundedBy = refundedBy

            self.refundObject = refundObject

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.currentStatus = currentStatus

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.companyId = companyId

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.paymentId = paymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(paymentId, forKey: .paymentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var applicationId: String

        public var allStatus: [String]

        public var refundedBy: String

        public var refundObject: [String: Any]?

        public var currency: String

        public var amountInPaisa: String

        public var currentStatus: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var id: String

        public var paymentModeIdentifier: String

        public var companyId: String

        public var paymentGateway: String

        public var paymentMode: String

        public var createdOn: String

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case applicationId = "application_id"

            case allStatus = "all_status"

            case refundedBy = "refunded_by"

            case refundObject = "refund_object"

            case currency

            case amountInPaisa = "amount_in_paisa"

            case currentStatus = "current_status"

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case companyId = "company_id"

            case paymentGateway = "payment_gateway"

            case paymentMode = "payment_mode"

            case createdOn = "created_on"

            case paymentId = "payment_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.applicationId = applicationId

            self.allStatus = allStatus

            self.refundedBy = refundedBy

            self.refundObject = refundObject

            self.currency = currency

            self.amountInPaisa = amountInPaisa

            self.currentStatus = currentStatus

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.companyId = companyId

            self.paymentGateway = paymentGateway

            self.paymentMode = paymentMode

            self.createdOn = createdOn

            self.paymentId = paymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            companyId = try container.decode(String.self, forKey: .companyId)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(paymentId, forKey: .paymentId)
        }
    }
}

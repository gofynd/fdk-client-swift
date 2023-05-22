

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var delightsUserName: String?

        public var accountHolder: String

        public var modifiedOn: String

        public var bankName: String

        public var transferMode: String

        public var mobile: String?

        public var branchName: String?

        public var comment: String?

        public var createdOn: String

        public var beneficiaryId: String

        public var displayName: String

        public var ifscCode: String

        public var id: Int

        public var email: String

        public var address: String

        public var subtitle: String

        public var isActive: Bool

        public var accountNo: String

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case delightsUserName = "delights_user_name"

            case accountHolder = "account_holder"

            case modifiedOn = "modified_on"

            case bankName = "bank_name"

            case transferMode = "transfer_mode"

            case mobile

            case branchName = "branch_name"

            case comment

            case createdOn = "created_on"

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"

            case ifscCode = "ifsc_code"

            case id

            case email

            case address

            case subtitle

            case isActive = "is_active"

            case accountNo = "account_no"

            case title
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.delightsUserName = delightsUserName

            self.accountHolder = accountHolder

            self.modifiedOn = modifiedOn

            self.bankName = bankName

            self.transferMode = transferMode

            self.mobile = mobile

            self.branchName = branchName

            self.comment = comment

            self.createdOn = createdOn

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName

            self.ifscCode = ifscCode

            self.id = id

            self.email = email

            self.address = address

            self.subtitle = subtitle

            self.isActive = isActive

            self.accountNo = accountNo

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            id = try container.decode(Int.self, forKey: .id)

            email = try container.decode(String.self, forKey: .email)

            address = try container.decode(String.self, forKey: .address)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var delightsUserName: String?

        public var accountHolder: String

        public var modifiedOn: String

        public var bankName: String

        public var transferMode: String

        public var mobile: String?

        public var branchName: String?

        public var comment: String?

        public var createdOn: String

        public var beneficiaryId: String

        public var displayName: String

        public var ifscCode: String

        public var id: Int

        public var email: String

        public var address: String

        public var subtitle: String

        public var isActive: Bool

        public var accountNo: String

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case delightsUserName = "delights_user_name"

            case accountHolder = "account_holder"

            case modifiedOn = "modified_on"

            case bankName = "bank_name"

            case transferMode = "transfer_mode"

            case mobile

            case branchName = "branch_name"

            case comment

            case createdOn = "created_on"

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"

            case ifscCode = "ifsc_code"

            case id

            case email

            case address

            case subtitle

            case isActive = "is_active"

            case accountNo = "account_no"

            case title
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.delightsUserName = delightsUserName

            self.accountHolder = accountHolder

            self.modifiedOn = modifiedOn

            self.bankName = bankName

            self.transferMode = transferMode

            self.mobile = mobile

            self.branchName = branchName

            self.comment = comment

            self.createdOn = createdOn

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName

            self.ifscCode = ifscCode

            self.id = id

            self.email = email

            self.address = address

            self.subtitle = subtitle

            self.isActive = isActive

            self.accountNo = accountNo

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            id = try container.decode(Int.self, forKey: .id)

            email = try container.decode(String.self, forKey: .email)

            address = try container.decode(String.self, forKey: .address)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}

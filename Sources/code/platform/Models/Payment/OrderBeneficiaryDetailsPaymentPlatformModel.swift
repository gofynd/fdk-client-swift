

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */

    class OrderBeneficiaryDetails: Codable {
        public var delightsUserName: String?

        public var address: String

        public var createdOn: String

        public var title: String

        public var email: String

        public var subtitle: String

        public var comment: String?

        public var displayName: String

        public var id: Int

        public var branchName: String?

        public var accountHolder: String

        public var accountNo: String

        public var mobile: String?

        public var isActive: Bool

        public var transferMode: String

        public var ifscCode: String

        public var modifiedOn: String

        public var bankName: String

        public var beneficiaryId: String

        public enum CodingKeys: String, CodingKey {
            case delightsUserName = "delights_user_name"

            case address

            case createdOn = "created_on"

            case title

            case email

            case subtitle

            case comment

            case displayName = "display_name"

            case id

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case accountNo = "account_no"

            case mobile

            case isActive = "is_active"

            case transferMode = "transfer_mode"

            case ifscCode = "ifsc_code"

            case modifiedOn = "modified_on"

            case bankName = "bank_name"

            case beneficiaryId = "beneficiary_id"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.delightsUserName = delightsUserName

            self.address = address

            self.createdOn = createdOn

            self.title = title

            self.email = email

            self.subtitle = subtitle

            self.comment = comment

            self.displayName = displayName

            self.id = id

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.accountNo = accountNo

            self.mobile = mobile

            self.isActive = isActive

            self.transferMode = transferMode

            self.ifscCode = ifscCode

            self.modifiedOn = modifiedOn

            self.bankName = bankName

            self.beneficiaryId = beneficiaryId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            title = try container.decode(String.self, forKey: .title)

            email = try container.decode(String.self, forKey: .email)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            id = try container.decode(Int.self, forKey: .id)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
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

        public var address: String

        public var createdOn: String

        public var title: String

        public var email: String

        public var subtitle: String

        public var comment: String?

        public var displayName: String

        public var id: Int

        public var branchName: String?

        public var accountHolder: String

        public var accountNo: String

        public var mobile: String?

        public var isActive: Bool

        public var transferMode: String

        public var ifscCode: String

        public var modifiedOn: String

        public var bankName: String

        public var beneficiaryId: String

        public enum CodingKeys: String, CodingKey {
            case delightsUserName = "delights_user_name"

            case address

            case createdOn = "created_on"

            case title

            case email

            case subtitle

            case comment

            case displayName = "display_name"

            case id

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case accountNo = "account_no"

            case mobile

            case isActive = "is_active"

            case transferMode = "transfer_mode"

            case ifscCode = "ifsc_code"

            case modifiedOn = "modified_on"

            case bankName = "bank_name"

            case beneficiaryId = "beneficiary_id"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.delightsUserName = delightsUserName

            self.address = address

            self.createdOn = createdOn

            self.title = title

            self.email = email

            self.subtitle = subtitle

            self.comment = comment

            self.displayName = displayName

            self.id = id

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.accountNo = accountNo

            self.mobile = mobile

            self.isActive = isActive

            self.transferMode = transferMode

            self.ifscCode = ifscCode

            self.modifiedOn = modifiedOn

            self.bankName = bankName

            self.beneficiaryId = beneficiaryId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            title = try container.decode(String.self, forKey: .title)

            email = try container.decode(String.self, forKey: .email)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            id = try container.decode(Int.self, forKey: .id)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
        }
    }
}

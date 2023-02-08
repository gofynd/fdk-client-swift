

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var transferPrice: Int

        public var discount: Double

        public var quantity: Int

        public var priceEffective: Double

        public var modifiedOn: String

        public var hsnCodeId: String

        public var id: String

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var unitPrice: Double

        public var itemSize: String

        public var identifier: [String: Any]

        public var itemId: Int

        public var fyndStoreId: String

        public var companyId: Int

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case discount

            case quantity

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case identifier

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case sku

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.discount = discount

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.identifier = identifier

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}

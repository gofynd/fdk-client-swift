

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var sku: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var modifiedOn: String

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var id: String

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var unitPrice: Double

        public var itemSize: String

        public var priceEffective: Double

        public var transferPrice: Int

        public var quantity: Int

        public var storeId: Int

        public var affiliateStoreId: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var avlQty: Int

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case sku

            case discount

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case quantity

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case identifier

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.sku = sku

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.identifier = identifier

            self.avlQty = avlQty

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var sku: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var modifiedOn: String

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var id: String

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var unitPrice: Double

        public var itemSize: String

        public var priceEffective: Double

        public var transferPrice: Int

        public var quantity: Int

        public var storeId: Int

        public var affiliateStoreId: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var avlQty: Int

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case sku

            case discount

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case quantity

            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case identifier

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.sku = sku

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.identifier = identifier

            self.avlQty = avlQty

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            sku = try container.decode(String.self, forKey: .sku)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}

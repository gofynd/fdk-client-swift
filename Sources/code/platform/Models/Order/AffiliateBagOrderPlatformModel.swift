

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var quantity: Int

        public var priceMarked: Double

        public var storeId: Int

        public var sku: String

        public var priceEffective: Double

        public var id: String

        public var affiliateStoreId: String

        public var itemSize: String

        public var fyndStoreId: String

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var companyId: Int

        public var avlQty: Int

        public var discount: Double

        public var identifier: [String: Any]

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case quantity

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case sku

            case priceEffective = "price_effective"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case discount

            case identifier

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.sku = sku

            self.priceEffective = priceEffective

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.avlQty = avlQty

            self.discount = discount

            self.identifier = identifier

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

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
        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var quantity: Int

        public var priceMarked: Double

        public var storeId: Int

        public var sku: String

        public var priceEffective: Double

        public var id: String

        public var affiliateStoreId: String

        public var itemSize: String

        public var fyndStoreId: String

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var companyId: Int

        public var avlQty: Int

        public var discount: Double

        public var identifier: [String: Any]

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case quantity

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case sku

            case priceEffective = "price_effective"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case discount

            case identifier

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.sku = sku

            self.priceEffective = priceEffective

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.avlQty = avlQty

            self.discount = discount

            self.identifier = identifier

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}



import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var sellerIdentifier: String

        public var affiliateStoreId: String

        public var storeId: Int

        public var sku: String

        public var id: String

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var priceMarked: Double

        public var fyndStoreId: String

        public var modifiedOn: String

        public var itemId: Int

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var quantity: Int

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var avlQty: Int

        public var itemSize: String

        public var unitPrice: Double

        public var discount: Double

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case affiliateStoreId = "affiliate_store_id"

            case storeId = "store_id"

            case sku

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case identifier

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case discount

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.affiliateStoreId = affiliateStoreId

            self.storeId = storeId

            self.sku = sku

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.discount = discount

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
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

        public var sellerIdentifier: String

        public var affiliateStoreId: String

        public var storeId: Int

        public var sku: String

        public var id: String

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var priceMarked: Double

        public var fyndStoreId: String

        public var modifiedOn: String

        public var itemId: Int

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var quantity: Int

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var avlQty: Int

        public var itemSize: String

        public var unitPrice: Double

        public var discount: Double

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case sellerIdentifier = "seller_identifier"

            case affiliateStoreId = "affiliate_store_id"

            case storeId = "store_id"

            case sku

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case identifier

            case amountPaid = "amount_paid"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case discount

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.sellerIdentifier = sellerIdentifier

            self.affiliateStoreId = affiliateStoreId

            self.storeId = storeId

            self.sku = sku

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.discount = discount

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

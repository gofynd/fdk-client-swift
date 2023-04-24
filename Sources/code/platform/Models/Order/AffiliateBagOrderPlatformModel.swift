

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var id: String

        public var hsnCodeId: String

        public var itemId: Int

        public var avlQty: Int

        public var deliveryCharge: Double

        public var itemSize: String

        public var priceEffective: Double

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var sku: String

        public var priceMarked: Double

        public var companyId: Int

        public var storeId: Int

        public var discount: Double

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case sku

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case storeId = "store_id"

            case discount

            case identifier

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.sku = sku

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.storeId = storeId

            self.discount = discount

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var id: String

        public var hsnCodeId: String

        public var itemId: Int

        public var avlQty: Int

        public var deliveryCharge: Double

        public var itemSize: String

        public var priceEffective: Double

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var sku: String

        public var priceMarked: Double

        public var companyId: Int

        public var storeId: Int

        public var discount: Double

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case sku

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case storeId = "store_id"

            case discount

            case identifier

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.id = id

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.sku = sku

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.storeId = storeId

            self.discount = discount

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
